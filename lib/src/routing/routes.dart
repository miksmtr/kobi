import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kobi/src/feature/landing_page/landing_page.dart';
import 'package:kobi/src/feature/panel/pages/panel_settings_page.dart';
import 'package:provider/provider.dart';
import '../feature/authentication/pages/email_link_sign_in_page.dart';
import '../feature/authentication/pages/email_verify.dart';
import '../feature/authentication/pages/forgot_password.dart';
import '../feature/authentication/pages/profile_page.dart';
import '../feature/authentication/pages/sign_in/sign_in.dart';
import '../feature/panel/general_widget/general_widget.dart';
import '../feature/panel/pages/panel_home_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GoRouter routes = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/",
  redirect: (BuildContext context, GoRouterState state) {
    final auth = FirebaseAuth.instance;
    if (state.location.contains("panel")) {
      if (auth.currentUser == null) {
        return '/panel/sign-in';
      }
      if (!auth.currentUser!.emailVerified && auth.currentUser!.email != null) {
        return '/panel/verify-email';
      }
      return null;
    } else {
      return null;
    }
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LandingPage(),
    ),
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
