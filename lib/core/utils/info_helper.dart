import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nepstayapp/core/nef_custom/nef_text.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/string_util.dart';

class InfoHelper {
  static void showToast(String? message) {
    Fluttertoast.showToast(
      msg: "$message",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 4,
    );
  }

  static void showErrorToast(BuildContext context, String message) {
    CherryToast.error(
      inheritThemeColors: true,
      title: Text(
        message,
        textAlign: TextAlign.center,
      ),
      animationType: AnimationType.fromRight,
      actionHandler: () {},
      toastDuration: const Duration(milliseconds: 2000),
    ).show(context);
  }

  static void showSuccessToast(BuildContext context, String message) {
    CherryToast.success(
      inheritThemeColors: true,
      title: Text(
        message,
        textAlign: TextAlign.center,
      ),
      animationType: AnimationType.fromRight,
      toastDuration: const Duration(milliseconds: 1600),
    ).show(context);
  }

  static void ChangePasswordUi({
    required BuildContext context,
    required String title,
    required void Function()? onPressed,
  }) {
    precacheImage(AssetImage("assets/images/warning.png"), context).then((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            surfaceTintColor: whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            title: Image.asset(
              "assets/images/warning.png",
              height: 50,
            ),
            content: NefText(
              text: title,
              textAlign: TextAlign.center,
            ),
            actions: [
              Material(
                color: Colors.transparent,
                elevation: 0,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: NefText(
                    text: noStr,
                    fontSize: 16,
                    textColor: primaryColor,
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 0,
                child: TextButton(
                  onPressed: onPressed,
                  child: NefText(
                    text: yesStr,
                    fontSize: 16,
                    textColor: primaryColor,
                  ),
                ),
              ),
            ],
          );
        },
      );
    });
  }

  static void ChangedPasswordUi(BuildContext context) {
    // Preload the image
    precacheImage(AssetImage("assets/images/check.png"), context).then((_) {
      showDialog(
        context: context,
        // barrierColor: blackColor.withOpacity(0.4),
        builder: (BuildContext context) {
          return AlertDialog(
            surfaceTintColor: whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            title: Image.asset(
              "assets/images/check.png",
              height: 50,
            ),
            content: NefText(
              text:
                  "A link to reset your password has been sent to your email. Please check your inbox and follow the instructions to update your password.",
              textAlign: TextAlign.center,
              fontSize: 12,
              maxline: 5,
            ),
            actions: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Material(
                    elevation: 0,
                    child: Center(
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primaryColor,
                          border: Border.all(color: primaryColor),
                        ),
                        child: Center(
                          child: NefText(
                            text: okStr,
                            textColor: whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    });
  }

  static dialogUi({
    required BuildContext context,
    required String title,
    required void Function()? onPressed,
  }) {
    precacheImage(AssetImage("assets/images/warning.png"), context).then((_) {
      showDialog(
        context: context,
        barrierColor: Colors.transparent.withOpacity(0.4),
        builder: (BuildContext context) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: AlertDialog(
              surfaceTintColor: whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Column(
                children: [
                  Image.asset(
                    "assets/images/warning.png",
                    height: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NefText(
                    text: areYouSureStr,
                    fontSize: 16,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              actions: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: NefText(
                        text: noStr,
                        fontSize: 16,
                        textColor: primaryColor,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: onPressed,
                      child: NefText(
                        text: yesStr,
                        fontSize: 16,
                        textColor: primaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    });
  }

  static void invalidCredentials({required BuildContext context}) {
    showDialog(
      context: context,
      barrierColor: shade100.withOpacity(0.4),
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          title: NefText(
            text: invalidCredentialsStr,
            textColor: primaryColor,
          ),
          content: NefText(
            text: enterValidCredentialsStr,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: NefText(
                text: okStr,
                textColor: primaryColor,
              ),
            )
          ],
        );
      },
    );
  }
}
