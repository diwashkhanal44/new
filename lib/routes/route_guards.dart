import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';

class AuthenticatedGuard extends AutoRouteGuard {
  final BuildContext context;
  AuthenticatedGuard(this.context);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isAuthenticated =
        BlocProvider.of<AuthCubit>(context).state is Authenticated;

    if (isAuthenticated)
      resolver.next(true); //if authenticated go to next else go to login
    else
      router.push(LoginScreen());
  }
}

// class PermissionGuard extends AutoRouteGuard {
//   final BuildContext context;

//   PermissionGuard(this.context);

//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) async {
//     final permissions =
//         resolver.route.

//     for (int i = 0; i < permissions.length; i++) {
//       if (!BlocProvider.of<AuthCubit>(context).hasPermission(permissions[i])) {
//         router.pop();
//         BotToast.showText(text: "Don't have Permission to perform this task");
//         break;
//       }
//     }
//     resolver.next(true); //if authenticated go to next else go to login
//   }
// }

// final routePermission = {
//   CreateNewComment: ['create-comments']
// };
