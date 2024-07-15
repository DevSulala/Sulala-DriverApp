import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sulala_driver_app/core/network/provider/network_helper.dart';
import 'package:sulala_driver_app/features/auth/splash_screen.dart/splash_screen.dart';
import 'package:sulala_driver_app/features/auth/ui/sign_in/sign_in.dart';
import 'package:sulala_driver_app/features/auth/ui/sign_up/create_password.dart';
import 'package:sulala_driver_app/features/auth/ui/sign_up/sign_up.dart';
import 'package:sulala_driver_app/features/profile/ui/screen/profile_page.dart';
import 'package:sulala_driver_app/src/screens/driver_bottom_navigation.dart';
import 'package:sulala_driver_app/src/screens/driver_home_page.dart';

@singleton
class AppRouter {
  Future<bool> isOnboarded() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('onboarded') ?? false;
  }

  Future<bool> isAuthenticated() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('onboarded') ?? false;
  }

  Future<bool> isUserAuthenticated() async {
    await NetworkHelper.loadTokens();
    return NetworkHelper.accessToken?.value.isNotEmpty == true;
  }

  late final GoRouter router;

  AppRouter() {
    router = GoRouter(
      initialLocation: '/splash',
      onException: (context, state, rtr) {
        rtr.go('/splash');
      },
      routes: [
        GoRoute(
          path: '/splash',
          builder: (BuildContext context, GoRouterState state) =>
              const SplashScreen(),
          redirect: (context, state) async {
            bool isuserAuthenticated = await isUserAuthenticated();
            return isuserAuthenticated ? '/home' : '/signin';
          },
        ),
        GoRoute(
          path: '/signin',
          builder: (BuildContext context, GoRouterState state) =>
              const SignIn(),
        ),
        GoRoute(
          path: '/signup',
          builder: (BuildContext context, GoRouterState state) =>
              const SignUp(),
        ),
        GoRoute(
            path: '/create_password',
            builder: (_, __) => const CreatePassword()),
        ShellRoute(
          builder: (context, state, child) => DriverBottomNavigation(),
          routes: [
            GoRoute(
              path: '/home',
              builder: (BuildContext context, GoRouterState state) =>
                  DriverHomePage(),
            ),
            GoRoute(
              path: '/profile',
              builder: (BuildContext context, GoRouterState state) =>
                  const DriverProfilePage(),
            ),
          ],
        ),
      ],
    );
  }
}
