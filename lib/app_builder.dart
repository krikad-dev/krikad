import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'configurations/router.dart';
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
       RepositoryProvider<AppLinksRepository>.value(
              value: appLinksRepository,
              )
    ],
    blocProviders: [
      BlocProvider<AppCubit>(
              create: (context) => AppCubit.instance,
            ),
    ], 
    builder: (context)=>{}
  );
}
