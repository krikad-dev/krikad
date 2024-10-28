import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

export 'router.gr.dart';

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
  ];

}