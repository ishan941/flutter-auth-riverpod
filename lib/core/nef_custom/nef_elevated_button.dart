import 'package:flutter/material.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/nef_typography_helper.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';

class NefElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;

  const NefElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: NefPadding.bottomPadding,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: backgroundColor ?? primaryColor,
            elevation: 1,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(NefSpacing.spacing2), // Border radius
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class RidElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? height;

  const RidElevatedButton(
      {super.key,
      required this.text,
      this.height,
      required this.onPressed,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: height ?? 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: backgroundColor ?? primaryColor,
          elevation: 1,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(NefSpacing.spacing2), // Border radius
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class NefElevationBackButton extends StatelessWidget {
  void Function()? onPressed;
  final double? height;
  final String text;
  final bool? isSignUp;
  final bool? isTextCenter;
  final bool? isForm;
  NefElevationBackButton(
      {Key? key,
      this.onPressed,
      required this.text,
      this.height,
      this.isSignUp = false,
      this.isTextCenter = true,
      this.isForm = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: height ?? 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            side: const BorderSide(color: primaryColor, width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(NefRadius.radius2),
            ),
          ),
          onPressed: onPressed ??
              () {
                isForm! ? Navigator.pop(context) : null;
              },
          child: isTextCenter!
              ? Text(
                  text,
                  // style: Theme.of(context)
                  //     .textTheme
                  //     .subheadingRegular
                  //     ?.copyWith(color: primary700)
                )
              : Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    text,
                    // style: Theme.of(context)
                    //     .textTheme
                    //     .subheadingRegular
                    //     ?.copyWith(color: primary700)
                  ),
                )),
    );
  }
}

class NefGradientElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const NefGradientElevatedButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        elevation: WidgetStateProperty.all(5),
        shadowColor: WidgetStateProperty.all(Colors.transparent),
        padding:
            WidgetStateProperty.all(EdgeInsets.zero), // Remove internal padding
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red.shade500,
              Colors.yellow.shade500,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: NefSpacing.spacing13,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

class NefForwardButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const NefForwardButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        elevation: WidgetStateProperty.all(5),
        shadowColor: WidgetStateProperty.all(Colors.transparent),
        padding:
            WidgetStateProperty.all(EdgeInsets.zero), // Remove internal padding
      ),
      child: Container(
        color: Colors.white70,
        width: MediaQuery.of(context).size.width,
        height: NefSpacing.spacing13,
        child: Row(
          children: [
            Text(label, style: NefTypographyHelper.bodyLgBold),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: grey400,
            )
          ],
        ),
      ),
    );
  }
}
