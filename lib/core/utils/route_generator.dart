import 'package:flutter/material.dart';
import 'package:nepstayapp/core/utils/route_constants.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/login_page.dart';

class RouteGenerator {
  static navigateToPage(BuildContext context, String route,
      {dynamic arguments}) {
    Navigator.push(context,
        generateRoute(RouteSettings(name: route, arguments: arguments)));
  }

  static navigateToPageWithoutStack(BuildContext context, String route,
      {dynamic arguments}) {
    Navigator.pushAndRemoveUntil(
      context,
      generateRoute(RouteSettings(name: route, arguments: arguments)),
      (route) => false, // This line removes all existing routes
    );
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginPageRouter:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
