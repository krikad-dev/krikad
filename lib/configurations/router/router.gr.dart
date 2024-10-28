// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter_starter/features/app/presentation/pages/app_home_page.dart'
    deferred as _i1;
import 'package:flutter_starter/features/auth/presentation/presentation.dart'
    deferred as _i3;
import 'package:flutter_starter/features/Home/presentation/pages/home_page.dart'
    deferred as _i2;

/// generated route for
/// [_i1.AppHomePage]
class AppHomeRoute extends _i4.PageRouteInfo<void> {
  const AppHomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AppHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppHomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i4.DeferredWidget(
        _i1.loadLibrary,
        () => _i1.AppHomePage(),
      );
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i4.DeferredWidget(
        _i2.loadLibrary,
        () => _i2.HomePage(),
      );
    },
  );
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i4.DeferredWidget(
        _i3.loadLibrary,
        () => _i3.LoginPage(),
      );
    },
  );
}
