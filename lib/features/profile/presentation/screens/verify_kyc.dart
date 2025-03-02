import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/utils/color_util.dart';

class VerifyKyc extends ConsumerStatefulWidget {
  const VerifyKyc({super.key});

  @override
  ConsumerState<VerifyKyc> createState() => _VerifyKycState();
}

class _VerifyKycState extends ConsumerState<VerifyKyc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NefAppBar(
        title: "Verify Kcy",
        backgroundColor: primaryColor,
      ),
    );
  }
}
