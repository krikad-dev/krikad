import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/configurations/router/router.gr.dart';

import '../../features/auth/authentication.dart';

bool get isAuthenticated => AuthCubit.instance.state.user != null;


class AuthGuard extends AutoRedirectGuard {
  late StreamSubscription<AuthState> _subscription;
  AuthGuard() {
    _subscription = AuthCubit.instance.stream.listen(
      (state){
        if (state.user != null){
          
        }
      }
    );
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    //Used by the auth guard to redirect to the auth page if the user is not authenticated
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      redirect(const LoginRoute(), resolver: resolver);
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

   @override
  Future<bool> canNavigate(RouteMatch route) async => isAuthenticated;
}
