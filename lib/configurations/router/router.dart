import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/configurations/router/auth_guard.dart';
import 'package:flutter_starter/configurations/router/router.gr.dart';


export 'router.gr.dart';


final navigatorKey = GlobalKey<NavigatorState>();

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class AppRouter extends RootStackRouter{
  AppRouter({super.navigatorKey});
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    /// routes go here
    AutoRoute(
      path: '/auth',
      page: LoginRoute.page,
      initial: true
    ),
    AutoRoute(
      page: AppHomeRoute.page, 
      path: '/app_home',
      guards: [
        AuthGuard()
      ]
    )
  ];

}