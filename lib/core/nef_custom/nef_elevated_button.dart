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
  final void Function()? onPressed;
  final double? height;
  final String text;
  final bool? isSignUp;
  final bool? isTextCenter;
  final bool? isForm;
  final bool? isProfile;
  final String? profileTitle; // Additional text for profile mode
  final String? profileSubtitle; // Subtitle for profile mode

  NefElevationBackButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.height,
    this.isSignUp = false,
    this.isTextCenter = true,
    this.isForm = true,
    this.isProfile = false,
    this.profileTitle,
    this.profileSubtitle,
  }) : super(key: key);

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
              if (isForm!) {
                Navigator.pop(context);
              }
            },
        child: isProfile!
            ? Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              profileTitle ?? "Profile ", // Customizable title
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text:
                              profileSubtitle ?? text, // Customizable subtitle
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : isTextCenter!
                ? Text(
                    text,
                    style: TextStyle(color: Colors.black),
                  )
                : Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      text,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
      ),
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
  final IconData icon; // Add icon parameter

  const NefForwardButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.icon, // Make icon required
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
        height: 50,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 25,
            ), // Display the provided icon
            const SizedBox(width: 10), // Add spacing between icon and text
            Text(
              label,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black), // Adjust text style
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
