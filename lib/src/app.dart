import 'package:flutter/material.dart';
import 'package:kobi/src/theme.dart';
import 'package:provider/provider.dart';
import 'feature/panel/routing/routes.dart';

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppTheme(),
      builder: (context, _) {
        final appTheme = context.watch<AppTheme>();
        return MaterialApp.router(
          routerConfig: router,
          themeMode: appTheme.mode,
          locale: appTheme.locale,
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData.dark(),
          title: "Kobi",
          theme: ThemeData.light(),
          /* ini: FluentApp(
            title: "Kobi",
            themeMode: appTheme.mode,
            debugShowCheckedModeBanner: false,
            color: appTheme.color,
            darkTheme: FluentThemeData(
              brightness: Brightness.dark,
              accentColor: appTheme.color,
              visualDensity: VisualDensity.standard,
              focusTheme: FocusThemeData(
                glowFactor: is10footScreen() ? 2.0 : 0.0,
              ),
            ),
            theme: FluentThemeData(
              accentColor: appTheme.color,
              visualDensity: VisualDensity.standard,
              focusTheme: FocusThemeData(
                glowFactor: is10footScreen() ? 2.0 : 0.0,
              ),
            ),
            locale: appTheme.locale,
            builder: (context, child) {
              return Directionality(
                textDirection: appTheme.textDirection,
                child: NavigationPaneTheme(
                  data: NavigationPaneThemeData(
                    backgroundColor: appTheme.windowEffect !=
                            flutter_acrylic.WindowEffect.disabled
                        ? materialApp.Colors.transparent
                        : null,
                  ),
                  child: child!,
                ),
              );
            },
            initialRoute: '/',
            routes: router,
          ), */
        );
      },
    );
  }
}
