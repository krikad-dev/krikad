import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/configurations/router/router.gr.dart';

import '../../features/auth/authentication.dart';

bool get isAuthenticated => AuthCubit.instance.state.user != null;

class AuthGuard extends AutoRouteGuard {
  // AuthGuard() {
  //     _subscription = AuthCubit.instance.stream.listen(
  //       (state) {
  //         //Listener to the auth state to redirect to the appropriate page
  //         if (state.user != null) {
  //           reevaluate(
  //             strategy: const ReevaluationStrategy.removeAllAndPush(
  //               AppHomeRoute(),
  //             ),
  //           );
  //         } else if (state.user == null) {
  //           reevaluate(
  //             strategy: const ReevaluationStrategy.removeAllAndPush(
  //               AuthRouter(),
  //             ),
  //           );
  //         }
  //       },
  //     );
  //   }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    //Used by the auth guard to redirect to the auth page if the user is not authenticated
    // late ReevaluateListenable _subscription;
   

    // if(_subscription.user != null){
    //   resolver.next();
    // }
    // else{
    //   router.push(const LoginRoute());
    // }
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      router.push(const LoginRoute());
    }
  }

  // @override
  // void dispose() {
  //   _subscription.cancel();
  // }

  @override
  Future<bool> canNavigate(RouteMatch route) async => isAuthenticated;
}
