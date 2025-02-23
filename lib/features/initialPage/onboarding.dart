import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';
import 'package:nepstayapp/core/utils/route_constants.dart';
import 'package:nepstayapp/core/utils/route_generator.dart';
import 'package:nepstayapp/core/utils/string_util.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  PageViewModel buildPage({
    required String text,
    required String description,
    required String imagePath,
    TextAlign? textAlign,
  }) {
    return PageViewModel(
      title: "",
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: textAlign == TextAlign.left
            ? CrossAxisAlignment.start
            : textAlign == TextAlign.right
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: NefSpacing.spacing16),
          Center(
            child: SizedBox(
              height: NefSpacing.spacing72,
              width: NefSpacing.spacing72,
              child: Image.asset(
                imagePath,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: NefSpacing.spacing22),
          Text(
            text,
            style: Theme.of(context).textTheme.headline3SemiBold,
            textAlign: textAlign,
          ),
          const SizedBox(height: NefSpacing.spacing5),
          Text(description,
              textAlign: textAlign,
              style: Theme.of(context).textTheme.subheadingRegular),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Container(
            height: NefSpacing.spacing30,
            color: primaryColor,
          ),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: IntroductionScreen(
                    key: introKey,
                    globalBackgroundColor: Colors.white,
                    allowImplicitScrolling: true,
                    autoScrollDuration: 30000,
                    infiniteAutoScroll: true,
                    pages: [
                      buildPage(
                          text: "Anywhere you are",
                          description:
                              "Sell houses easily with the help of Listenoryx and to make this line big I am writing more.",
                          imagePath: 'assets/images/onboarding1.png'),
                      buildPage(
                        text: "At anytime",
                        description:
                            "Sell houses easily with the help of Listenoryx and to make this line big I am writing more.",
                        imagePath: "assets/images/onboarding2.png",
                        // textAlign: TextAlign.left,
                      ),
                      buildPage(
                        text: "Book your car",
                        description:
                            "Sell houses easily with the help of Listenoryx and to make this line big I am writing more.",

                        imagePath: 'assets/images/onboarding3.png',
                        // textAlign: TextAlign.left,
                      ),
                    ],
                    showDoneButton: false,
                    showNextButton: false,
                    showSkipButton: false,
                    dotsDecorator: const DotsDecorator(
                      size: Size.square(7),
                      activeColor: primaryColor,
                      activeSize: Size.square(9),
                    ),
                    globalFooter: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: NefSpacing.spacing4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  RouteGenerator.navigateToPageWithoutStack(
                                      context, Routes.loginPageRouter);
                                },
                                child: Text(skipStr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subheadingRegular),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(12)),
                                child: IconButton(
                                  onPressed: () {
                                    final pageIndex = introKey
                                            .currentState?.controller.page
                                            ?.round() ??
                                        0;
                                    final isLastPage = pageIndex == 2;

                                    if (isLastPage) {
                                      RouteGenerator.navigateToPageWithoutStack(
                                          context, Routes.loginPageRouter);
                                    } else {
                                      introKey.currentState?.next();
                                    }
                                  },
                                  icon: const Icon(Icons.arrow_forward,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: NefSpacing.spacing10)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
