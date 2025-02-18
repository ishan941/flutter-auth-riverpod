import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected async {
    final connectivityResult = await connectionChecker.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        final result = await InternetAddress.lookup('example.com');
        return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
      } catch (e) {
        print(e);
        return false;
      }
    }
    return false;
  }
}
