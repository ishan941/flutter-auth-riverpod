import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';
// import 'package:rms_flutter/core/utils/color_util.dart';

class ThemeHelper {
  static ThemeData lightTheme() => ThemeData(
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: whiteColor,
      scaffoldBackgroundColor: whiteColor,
      textTheme: const TextTheme(
// //display 1
//         display1Regular: TextStyle(
//             fontSize: 48, color: Colors.black, fontWeight: FontWeight.w400),
//         display1SemiBold: TextStyle(
//             fontSize: 48, color: Colors.black, fontWeight: FontWeight.w600),
//         display1Bold: TextStyle(
//             fontSize: 48, color: Colors.black, fontWeight: FontWeight.w700),
// //display 2
//         display2Regular: TextStyle(
//             fontSize: 40, color: Colors.black, fontWeight: FontWeight.w400),
//         display2SemiBold: TextStyle(
//             fontSize: 40, color: Colors.black, fontWeight: FontWeight.w600),
//         display2Bold: TextStyle(
//             fontSize: 40, color: Colors.black, fontWeight: FontWeight.w700),
// //headline 1
//         headline1Regular: TextStyle(
//             fontSize: 36, color: Colors.black, fontWeight: FontWeight.w400),
//         headline1SemiBold: TextStyle(
//             fontSize: 36, color: Colors.black, fontWeight: FontWeight.w600),
//         headline1Bold: TextStyle(
//             fontSize: 36, color: Colors.black, fontWeight: FontWeight.w700),
// //headline 2
//         headline2Regular: TextStyle(
//             fontSize: 32, color: Colors.black, fontWeight: FontWeight.w400),
//         headline2SemiBold: TextStyle(
//             fontSize: 32, color: Colors.black, fontWeight: FontWeight.w600),
//         headline2Bold: TextStyle(
//             fontSize: 32, color: Colors.black, fontWeight: FontWeight.w700),
// //headline 3
//         headline3Regular: TextStyle(
//             fontSize: 24, color: Colors.black, fontWeight: FontWeight.w400),
//         headline3SemiBold: TextStyle(
//             fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),
//         headline3Bold: TextStyle(
//             fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),
// //headline 4
//         headline4Regular: TextStyle(
//             fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
//         headline4SemiBold: TextStyle(
//             fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
//         headline4Bold: TextStyle(
//             fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
// //headline 5
//         headline5Regular: TextStyle(
//             fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
//         headline5SemiBold: TextStyle(
//             fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
//         headline5Bold: TextStyle(
//             fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
// //subheading
//         subheadingRegular: TextStyle(
//             fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
//         subheadingSemiBold: TextStyle(
//             fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
//         subheadingBold: TextStyle(
//             fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
// //paragraph 2
//         paragraph1Regular: TextStyle(
//             fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
//         paragraph1SemiBold: TextStyle(
//             fontSize: 12, color: Colors.black, fontWeight: FontWeight.w600),
//         paragraph1Bold: TextStyle(
//             fontSize: 12, color: Colors.black, fontWeight: FontWeight.w700),
// //paragraph 2
//         paragraph2Regular: TextStyle(
//             fontSize: 11, color: Colors.black, fontWeight: FontWeight.w400),
//         paragraph2SemiBold: TextStyle(
//             fontSize: 11, color: Colors.black, fontWeight: FontWeight.w600),
//         paragraph2Bold: TextStyle(
//             fontSize: 11, color: Colors.black, fontWeight: FontWeight.w700),
// //paragraph 3
//         paragraph3Regular: TextStyle(
//             fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400),
//         paragraph3SemiBold: TextStyle(
//             fontSize: 10, color: Colors.black, fontWeight: FontWeight.w600),
//         paragraph3Bold: TextStyle(
//             fontSize: 10, color: Colors.black, fontWeight: FontWeight.w700),
// //caption
//         captionRegular: TextStyle(
//             fontSize: 9, color: Colors.black, fontWeight: FontWeight.w400),
//         captionSemiBold: TextStyle(
//             fontSize: 9, color: Colors.black, fontWeight: FontWeight.w600),
//         captionBold: TextStyle(
//             fontSize: 9, color: Colors.black, fontWeight: FontWeight.w700),
          ),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: primaryColor,
          selectionColor: primaryColor.withOpacity(0.3),
          selectionHandleColor: primaryColor),
      snackBarTheme: const SnackBarThemeData(
          contentTextStyle: TextStyle(color: Colors.black)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        textStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(
              fontSize: NefSpacing.spacing4,
              color: Colors.white,
              fontWeight: FontWeight.w300),
        ),
        backgroundColor: WidgetStateProperty.all<Color>(whiteColor),
        elevation: WidgetStateProperty.all<double>(4.0),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: whiteColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: blueColor,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme:
            IconThemeData(size: 24), // Unselected item icon size
      ),
      appBarTheme: AppBarTheme(
          shadowColor: Colors.grey.withOpacity(0.2),
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: whiteColor,
          centerTitle: true));
  static ThemeData darkTheme(double txtScaleFactor) => ThemeData();
}
