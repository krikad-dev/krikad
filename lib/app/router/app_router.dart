// import 'package:auto_route/auto_route.dart';
// import 'package:flutter_starter/app/router/app_router.gr.dart';

// @AutoRouterConfig(replaceInRouteName: 'View,Route')

// /// Holds all the routes that are defined in the app
// /// Used to generate the Router object
// final class AppRouter extends RootStackRouter {
//   @override
//   List<AutoRoute> get routes => [
//         // TODO: Add routes here
//         AutoRoute(
//           initial: true,
//           page: ScaffoldWithNavbar(navigationShell: navigationShell).page,
//         ),
//       ];
// }

// Create keys for `root` & `section` navigator avoiding unnecessary rebuilds
import 'package:flutter/material.dart';
import 'package:flutter_starter/app/router/custom_route_observer.dart';
import 'package:flutter_starter/feature/auth/login/view/login_screen.dart';
import 'package:flutter_starter/feature/auth/otp/view/otp_screen.dart';
import 'package:flutter_starter/feature/auth/signup/view/signup_screen.dart';
import 'package:flutter_starter/feature/index.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/login',
  observers: [
    GoRouterObserver(),
  ],
  routes: <RouteBase>[
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: '/otp',
          builder: (context, state) => const OtpScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => const SignupScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: '/otp',
          builder: (context, state) => const OtpScreen(),
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // Return the widget that implements the custom shell (e.g a BottomNavigationBar).
        // The [StatefulNavigationShell] is passed to be able to navigate to other branches in a stateful way.
        return ScaffoldWithNavbar(navigationShell: navigationShell);
      },
      branches: [
        // The route branch for the 1º Tab
        StatefulShellBranch(
          routes: <RouteBase>[
            // Add this branch routes
            // each routes with its sub routes if available e.g shope/uuid/details
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomePage(),
              routes: <RouteBase>[
                GoRoute(
                  path: '/feature1',
                  builder: (context, state) => const FeatureOnePage(),
                ),
              ],
            ),
          ],
        ),

        // The route branch for 2º Tab
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          // Add this branch routes
          // each routes with its sub routes if available e.g feed/uuid/details
          routes: <RouteBase>[
            GoRoute(
              path: '/setting',
              builder: (context, state) => const SettingsPage(),
              // routes: <RouteBase> [

              // ],
            ),
          ],
        ),
      ],
    ),
  ],
);
