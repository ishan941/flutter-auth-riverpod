import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loader {
  // static backdropFilter(context) {
  //   return BackdropFilter(
  //     filter: ImageFilter.blur(sigmaX: 4, sigmaY: 3),
  //     child: SafeArea(
  //       child: Stack(
  //         children: [
  //           const Center(
  //             child: SpinKitCircle(color: Colors.blue),
  //           ),
  //           Container(
  //             height: MediaQuery.of(context).size.height,
  //             color: Colors.white.withOpacity(0),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  static discreteCircular(context) {
    return LoadingAnimationWidget.discreteCircle(
        size: 40,
        color: Colors.blue,
        secondRingColor: Colors.green,
        thirdRingColor: Colors.red);
  }
}
