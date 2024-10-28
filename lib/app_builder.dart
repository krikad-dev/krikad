import 'package:auto_route/auto_route.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/features/app/presentation/builders/app_responsive_layout_builder.dart';
import 'package:flutter_starter/features/auth/presentation/listeners/login_listener_wrapper.dart';
import 'package:flutter_starter/l10n/l10n.dart';

import 'configurations/constants/constants.dart';
import 'configurations/router/router.dart';
import 'configurations/theme/theme.dart';
import 'features/auth/authentication.dart';
import 'features/auth/data/repo/auth_repo.dart';
import 'l10n/language_provider.dart';

class CustomAppBuilder extends AppBuilder {
  CustomAppBuilder({
    super.key,
    super.onDispose,
    required AppRouter appRouter,
    required AppLinksRepository appLinksRepository,
    required LanguageProvider provider,
    final String? initialDeepLink,
  }) : super(
    onInitState: (context) {},
    repositoryProviders: [
       RepositoryProvider<AuthRepo>(
              create: (context) => AuthRepo(FirebaseAuth.instance),
            ),
       RepositoryProvider<AppLinksRepository>.value(
              value: appLinksRepository,
              )
    ],
    blocProviders: [
      BlocProvider<AppCubit>(
              create: (context) => AppCubit.instance,
            ),
            BlocProvider<AuthCubit>(
              create: (context) => AuthCubit.instance
                ..init(
                  context.read<AuthRepo>(),
                ),
              lazy: false,
            ),
      BlocProvider<AppCubit>(
              create: (context) => AppCubit.instance,
            ),
    ], 
    builder: (context)=>LoginListenerWrapper(
      initialUser: context.read<AuthCubit>().state.user,
            onLogin: (context, user) {
              ///For performing tasks after login
             
            },
      onLogout: (context) {},
      child:AppCubitConsumer(
                listenWhen: (previous, current) =>
                    previous.environment != current.environment,
                listener: (context, state) async {},
                builder: (context, appState) {
                  return MaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    scaffoldMessengerKey:
                        DjangoflowAppSnackbar.scaffoldMessengerKey,
                    title: appName,
                    routerConfig: appRouter.config(
                      reevaluateListenable: ReevaluateListenable.stream(AuthCubit.instance.stream),
                    ),
                    routeInformationParser: appRouter.defaultRouteParser(),
                    theme: AppTheme.light,
                    darkTheme: AppTheme.dark,
                    themeMode: appState.themeMode,
                    // locale: Locale(appState.locale, ''),
                    locale: provider.locale,
                    supportedLocales: L10n.all,
                    localizationsDelegates: const [
                      // AppLocalizations.delegate,
                      // GlobalMaterialLocalizations.delegate,
                      // GlobalWidgetsLocalizations.delegate,
                      // GlobalCupertinoLocalizations.delegate,
                    ],
                    routerDelegate: appRouter.delegate(
                      deepLinkBuilder: (_) => initialDeepLink != null
                          ? DeepLink.path(initialDeepLink)
                          : const DeepLink(
                              [
                                AppHomeRoute(),
                              ],
                            ),
                      // List of global navigation obsersers here
                      // SentryNavigationObserver
                      // navigatorObservers: () => {RouteObserver()},
                    ),
                    builder: (context, child) => AppResponsiveLayoutBuilder(
                      child: SandboxBanner(
                        isSandbox:
                            appState.environment == AppEnvironment.sandbox,
                        child: child != null
                            ? kIsWeb
                                ? child
                                : AppLinksCubitListener(
                                    listenWhen: (previous, current) =>
                                        current != null,
                                    listener: (context, appLink) {
                                      final path = appLink?.path;
                                      if (path != null) {
                                        appRouter.navigateNamed(
                                          path,
                                          onFailure: (failure) {
                                            appRouter.navigate(
                                              const AppHomeRoute(),
                                            );
                                          },
                                        );
                                      }
                                    },
                                    child: child,
                                  )
                            : const Offstage(),
                      ),
                    ),
                  );
                }
              ),
    )
  );
}
