import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:total_parco/utils/routes/routes.dart';
import 'package:total_parco/views/dashboard/bottomTabs/fuels/pre_departure_inpsection.dart';
import 'package:total_parco/views/dashboard/bottomTabs/fuels/quality_complaint.dart';
import 'package:total_parco/views/dashboard/bottomTabs/fuels/quality_lab.dart';
import 'package:total_parco/views/dashboard/bottomTabs/fuels/quality_test_unit.dart';
import 'package:total_parco/views/dashboard/bottomTabs/fuels/quality_test_unit_audit.dart';
import 'package:total_parco/views/dashboard/bottom_tabs_bar.dart';
import 'package:total_parco/views/forgot_password.dart';
import 'package:total_parco/views/login.dart';
import 'package:total_parco/views/splash.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());

      case RoutesName.forgotPassword:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ForgotPasswordScreen());

      case RoutesName.bottomTabBar:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BottomTabBar());

      case RoutesName.qualityTestUnit:
        return MaterialPageRoute(
            builder: (BuildContext context) => const QualityTestUnit());

      case RoutesName.preDepartureInspection:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PreDepartureInspection());

      case RoutesName.qualityLab:
        return MaterialPageRoute(
            builder: (BuildContext context) => const QualityLab());

      case RoutesName.qualityComplaint:
        return MaterialPageRoute(
            builder: (BuildContext context) => const QualityComplaint());

      case RoutesName.qualityTestUnitAudit:
        return MaterialPageRoute(
            builder: (BuildContext context) => const QualityTestUnitAudit());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Text('No route defined'),
          );
        });
    }
  }
}
