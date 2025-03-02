import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';

class KycDetailPage extends ConsumerStatefulWidget {
  const KycDetailPage({super.key});

  @override
  ConsumerState<KycDetailPage> createState() => _KycDetailPageState();
}

class _KycDetailPageState extends ConsumerState<KycDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RidAppBar(title: "Kyc Detail"),
    );
  }
}
