import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kobi/src/feature/panel/pages/panel_settings_page.dart';
import '../../authentication/pages/email_link_sign_in_page.dart';
import '../../authentication/pages/email_verify.dart';
import '../../authentication/pages/forgot_password.dart';
import '../../authentication/pages/profile_page.dart';
import '../../authentication/pages/sign_in.dart';
import '../general_widget/general_widget.dart';
import '../pages/panel_home_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GoRouter panelRoutes = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/panel",
  redirect: (BuildContext context, GoRouterState state) {
    final auth = FirebaseAuth.instance;
    if (auth.currentUser == null) {
      return '/panel/sign-in';
    }
    if (!auth.currentUser!.emailVerified && auth.currentUser!.email != null) {
      return '/panel/verify-email';
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/panel/sign-in',
      builder: (context, state) => SignInPage(),
    ),
    GoRoute(
      path: '/panel/verify-email',
      builder: (context, state) => EmailVerifiy(),
    ),
    GoRoute(
      path: '/panel/forgot-password',
      builder: (context, state) {
        final arguments =
            ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
        return ForgotPasswordPage(arguments: arguments);
        ;
      },
    ),
    GoRoute(
      path: '/panel/email-link-sign-in',
      builder: (context, state) {
        return EmailLinkSignInPage();
      },
    ),
    GoRoute(
      path: '/panel',
      builder: (context, state) => PanelHomePage(),
    ),
    GoRoute(
      path: '/panel/settings',
      builder: (context, state) => PanelSettingsPage(),
    ),
    GoRoute(
      path: '/panel/home',
      builder: (context, state) => PanelHomePage(),
    ),
    GoRoute(
      path: '/panel/profile',
      builder: (context, state) =>
          ProfilePage(platform: Theme.of(context).platform),
    ),
  ],
);
