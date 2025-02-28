import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:nepstayapp/core/nef_custom/nef_text_form_field.dart';

const String googleApiKey = "AIzaSyDicd5Iiviwpr1chvOh52A4hY5XZZdacis";

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  LatLng? myCurrentLocation;
  LatLng? tappedLocation;
  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};

  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng(28.3949, 84.1240),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      debugPrint("Location services are disabled.");
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        debugPrint("Location permissions are denied.");
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      debugPrint("Location permissions are permanently denied.");
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    LatLng newPosition = LatLng(position.latitude, position.longitude);

    setState(() {
      myCurrentLocation = newPosition;
      _markers.clear();
      _polylines.clear();
      _markers.add(
        Marker(
          markerId: const MarkerId("my_location"),
          position: newPosition,
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: const InfoWindow(title: "My Location"),
        ),
      );
    });

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newLatLngZoom(newPosition, 16));
  }

  void _addMarkerOnTap(LatLng position) async {
    setState(() {
      tappedLocation = position;
      _markers.clear();
      _polylines.clear();

      // Add my current location marker
      if (myCurrentLocation != null) {
        _markers.add(
          Marker(
            markerId: const MarkerId("my_location"),
            position: myCurrentLocation!,
            icon: BitmapDescriptor.defaultMarker,
            infoWindow: const InfoWindow(title: "My Location"),
          ),
        );
      }

      _markers.add(
        Marker(
          markerId: const MarkerId("tapped_location"),
          position: position,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          infoWindow: const InfoWindow(title: "Tapped Location"),
        ),
      );
    });

    // Fetch and draw the route from my location to the tapped location
    if (myCurrentLocation != null) {
      _getRoutePolyline(myCurrentLocation!, position);
    }
  }

  Future<void> _getRoutePolyline(LatLng start, LatLng end) async {
    final String url =
        "https://maps.googleapis.com/maps/api/directions/json?origin=${start.latitude},${start.longitude}&destination=${end.latitude},${end.longitude}&key=$googleApiKey";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if ((data["routes"] as List).isNotEmpty) {
        String encodedPolyline =
            data["routes"][0]["overview_polyline"]["points"];
        List<LatLng> routePoints = _decodePolyline(encodedPolyline);

        setState(() {
          _polylines.add(
            Polyline(
              polylineId: const PolylineId("route"),
              points: routePoints,
              color: Colors.blue,
              width: 5,
            ),
          );
        });
      }
    } else {
      debugPrint("Error fetching route: ${response.body}");
    }
  }

  List<LatLng> _decodePolyline(String encoded) {
    List<LatLng> points = [];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int shift = 0, result = 0;
      int byte;

      do {
        byte = encoded.codeUnitAt(index++) - 63;
        result |= (byte & 0x1F) << shift;
        shift += 5;
      } while (byte >= 0x20);

      int deltaLat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += deltaLat;

      shift = 0;
      result = 0;

      do {
        byte = encoded.codeUnitAt(index++) - 63;
        result |= (byte & 0x1F) << shift;
        shift += 5;
      } while (byte >= 0x20);

      int deltaLng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += deltaLng;

      points.add(LatLng(lat / 1E5, lng / 1E5));
    }

    return points;
  }

  void _openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Home"),
              ),
              NefTextFormField(),
              NefTextFormField(),
              Text('Where would you go?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ListTile(
                title: Text('Rental'),
                subtitle:
                    Text('2.7km 2972 Westheimer Rd. Santa Ana, Illinois 85486'),
                leading: Icon(Icons.location_on),
              ),
              ListTile(
                title: Text('Coffee shop'),
                subtitle:
                    Text('1.1km 1901 Thornridge Cir. Shiloh, Hawaii 81063'),
                leading: Icon(Icons.local_cafe),
              ),
              ListTile(
                title: Text('Shopping center'),
                subtitle:
                    Text('4.9km 4140 Parker Rd. Allentown, New Mexico 31134'),
                leading: Icon(Icons.shopping_cart),
              ),
              ListTile(
                title: Text('Shopping mall'),
                subtitle:
                    Text('4.0km 4140 Parker Rd. Allentown, New Mexico 31134'),
                leading: Icon(Icons.store),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _initialPosition,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: _markers,
          polylines: _polylines, // Add polylines to draw a road route
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          onTap: _addMarkerOnTap,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            onPressed: _openBottomSheet,
            label: const Text('Where you want to go?'),
            icon: const Icon(Icons.my_location),
          ),
        ],
      ),
    );
  }
}
