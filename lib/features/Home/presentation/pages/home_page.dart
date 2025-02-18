import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/ns_search_bar.dart';
import 'package:nepstayapp/core/utils/loader.dart';
import 'package:nepstayapp/features/Home/data/model/property_model.dart';
import 'package:nepstayapp/features/Home/presentation/notifier/home_notifier.dart';
import 'package:nepstayapp/features/Property/screen/property_details.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(propertyProvider.notifier).getProperties());
  }

  bool pinned = true;
  bool snap = false;
  bool floating = true;

  @override
  Widget build(BuildContext context) {
    final propertyState = ref.watch(propertyProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 20.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Column(
                children: [
                  CustomSearchBar(),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomSearchBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ui(propertyState, context, index);
              },
              childCount: propertyState.maybeMap(
                success: (value) => value.response?.properties.length ?? 0,
                orElse: () => 0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ui(PropertyState propertyState, BuildContext context, int index) {
    return NefPadding(
      child: Column(
        children: [
          propertyState.maybeMap(
            loading: (_) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .3),
                Center(child: Loader.discreteCircular(context)),
              ],
            ),
            success: (value) {
              final property = value.response?.properties[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PropertyDetail(property: property),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: property?.imageUrl != null &&
                                      property!.imageUrl!.isNotEmpty
                                  ? Image.network(
                                      fixImageUrl(
                                        property.imageUrl!,
                                      ),
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
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Container(
                                          width: 120,
                                          height: 150,
                                          color: Colors.grey[300],
                                          child: const Icon(Icons.broken_image,
                                              size: 40),
                                        );
                                      },
                                    )
                                  : Container(
                                      width: 120,
                                      height: 150,
                                      color: Colors.grey[300],
                                      child: const Icon(
                                          Icons.image_not_supported,
                                          size: 40),
                                    ),
                            ),
                            const Row(
                              children: [
                                Spacer(),
                                NefPadding(child: Icon(Icons.favorite_border)),
                              ],
                            ),
                          ],
                        ),
                        NefPadding(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                property!.title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${property.pricePerNight} night",
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
    );
  }
}

String fixImageUrl(String url) {
  if (url.contains("localhost")) {
    return url.replaceFirst("localhost", "your-server-ip-or-domain.com");
  }
  return url;
}
