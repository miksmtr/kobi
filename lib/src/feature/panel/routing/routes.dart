import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kobi/src/feature/panel/pages/panel_settings_page.dart';
import '../general_widget/general_widget.dart';
import '../pages/panel_home_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return GeneralWidget(
          body: child,
        );
      },
      routes: [
        // This screen is displayed on the ShellRoute's Navigator.
        GoRoute(
          path: '/',
          builder: (context, state) => PanelHomePage(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => PanelSettingsPage(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => PanelHomePage(),
        ),
      ],
    ),
  ],
);
