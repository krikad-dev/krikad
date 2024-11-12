import 'package:flutter/material.dart';
import 'package:flutter_starter/app/constants/string_constants.dart';
import 'package:flutter_starter/app/l10n/l10n.dart';
import 'package:flutter_starter/app/router/app_router.dart' as app_router;
import 'package:flutter_starter/app/theme/dark/dark_theme.dart';
import 'package:flutter_starter/app/theme/light/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // App Name
      title: StringConstants.appName,

      // Theme
      theme: LightTheme().theme,
      darkTheme: DarkTheme().theme,

      // Localization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // Routing
      // routerConfig: _appRouter.config(
      //   navigatorObservers: () => [CustomRouteObserver()],
      // ),
      routerConfig: app_router.router,
    );
  }
}
