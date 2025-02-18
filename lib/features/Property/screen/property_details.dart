import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/features/Home/data/model/property_model.dart';
import 'package:nepstayapp/features/Home/presentation/pages/home_page.dart';
import 'package:nepstayapp/features/Property/notifier/home_detail_notifier.dart';

class PropertyDetail extends ConsumerStatefulWidget {
  Property property;
  PropertyDetail({super.key, required this.property});

  @override
  ConsumerState<PropertyDetail> createState() => _PropertyDetailState();
}

class _PropertyDetailState extends ConsumerState<PropertyDetail> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref
        .read(propertyDetailProvider.notifier)
        .getProperties(widget.property.id));
  }

  @override
  Widget build(BuildContext context) {
    final propertyState = ref.watch(propertyDetailProvider);

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(child: ui(context, propertyState)),
          reservation()
        ],
      ),
    );
  }

  Widget ui(BuildContext context, PropertyDetailsState propertyState) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: widget.property.imageUrl != null &&
                          widget.property.imageUrl!.isNotEmpty
                      ? Image.network(
                          fixImageUrl(
                            widget.property.imageUrl!,
                          ),
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        (loadingProgress.expectedTotalBytes ??
                                            1)
                                    : null,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 120,
                              height: 150,
                              color: Colors.grey[300],
                              child: const Icon(Icons.broken_image, size: 40),
                            );
                          },
                        )
                      : Container(
                          width: 120,
                          height: 150,
                          color: Colors.grey[300],
                          child:
                              const Icon(Icons.image_not_supported, size: 40),
                        ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 15),
                    NefPadding(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.arrow_back_sharp)),
                          ),
                          const Spacer(),
                          const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.ios_share)),
                          const SizedBox(
                            width: 20,
                          ),
                          const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.more_vert_rounded)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            NefPadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.property.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  propertyState.maybeWhen(
                      success: (propertyDetail) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${propertyDetail.description}",
                              style: const TextStyle(fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 15,
                                ),
                                Text("\t5.0 ∙ 3 reviews")
                              ],
                            ),
                            const Text("Kathmandu 3, Nepal"),
                            const Divider(),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    propertyDetail.landlord?.avatarUrl
                                                ?.isNotEmpty ==
                                            true
                                        ? fixImageUrl(
                                            propertyDetail.landlord!.avatarUrl!)
                                        : fixImageUrl(
                                            widget.property.imageUrl ?? ''),
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                    loadingBuilder:
                                        (context, child, loadingProgress) {
                                      if (loadingProgress == null) {
                                        return child;
                                      }
                                      return Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress
                                                      .expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  (loadingProgress
                                                          .expectedTotalBytes ??
                                                      1)
                                              : null,
                                        ),
                                      );
                                    },
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        width: 50,
                                        height: 50,
                                        color: Colors.grey[300],
                                        child: const Icon(Icons.broken_image,
                                            size: 40),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        "${propertyDetail.title} in home hosted by ${propertyDetail.landlord?.name}",
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        "${propertyDetail.guests} Guests ∙${propertyDetail.bedrooms} Bed ∙ ${propertyDetail.bathrooms} Bathroom",
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                      orElse: () => const SizedBox(
                            child: Text('NO data fetch '),
                          )),
                  details(),
                  nepStayDetail()
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget reservation() {
    return Column(
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor.withOpacity(0.5)),
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Rs. ${widget.property.pricePerNight}/ \nnight",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    height: 70,
                    width: 100,
                    child: const Center(child: Text("Reserve")),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget details() {
    return const Column(
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            Icon(Icons.door_back_door_outlined),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Self check-in"),
                Text("Check yourself in with the keypad.")
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.date_range_outlined),
            SizedBox(
              width: 15,
            ),
            Text("Free cancellation before Feb 12.")
          ],
        ),
        Text(
            'Every booking includes free protection from Host cancellations, listing inaccuracies, and other issues like trouble checking in.'),
      ],
    );
  }
}

Widget nepStayDetail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildCard(
        title: "Aircover",
        icon: LucideIcons.shieldCheck,
        content:
            "Every booking includes free protection from Host cancellations, listing inaccuracies, and other issues like trouble checking in.",
      ),
      _buildCard(
        title: "Description",
        content:
            "Enjoy a private and quiet bedroom and bathroom in Yonkers. Bus and train station are only minutes away. Train will take you to Manhattan in about 45 minutes. Cross County Mall and many restaurants are close by. Free parking. Fast WiFi.",
      ),
      _buildCard(
        title: "Where you’ll sleep",
        icon: LucideIcons.bed,
        content: "1 Queen bed",
      ),
      _buildCard(
        title: "What this place offers",
        content:
            "- River view\n- Wifi\n- Free parking\n- AC - Split type ductless system",
      ),
      _buildCard(
        title: "Where you’ll be",
        icon: LucideIcons.mapPin,
        content:
            "Yonkers, New York, United States\nLocated on a quiet suburban street.",
      ),
      _buildCard(
        title: "Reviews",
        icon: LucideIcons.star,
        content:
            "5.0 · 3 reviews\nBlair: 'Great location! This private room in Yonkers near the bus and train station made my trip a breeze. Cozy, clean, and a welcoming host. Highly recommended!'",
      ),
      _buildCard(
        title: "Hosted by Craig",
        content:
            "Joined in July 2014\n3 Reviews\nUS Air Force Reserves\nDirector of Distribution Operations at a NY hospital",
      ),
      _buildCard(
        title: "Availability",
        content: "Feb 13 - 14",
      ),
      _buildCard(
        title: "House rules",
        content: "Check-in: After 1:00 PM",
      ),
    ],
  );
}

Widget _buildCard(
    {required String title, IconData? icon, required String content}) {
  return Card(
    margin: const EdgeInsets.only(bottom: 16.0),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != null) Icon(icon, color: Colors.blue),
              const SizedBox(width: 8.0),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(content,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[700])),
        ],
      ),
    ),
  );
}
