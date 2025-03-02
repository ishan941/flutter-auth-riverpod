import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';

class ViewProfile extends ConsumerStatefulWidget {
  const ViewProfile({super.key});

  @override
  ConsumerState<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends ConsumerState<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RidAppBar(title: "title"),
    ); // Your UI here
  }
}
