import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kobi/src/language.dart';
import 'package:kobi/src/theme.dart';
import 'package:provider/provider.dart';
import 'feature/panel/routing/routes.dart';

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
        supportedLocales: AppLanguage().locales,
        path:
            'assets/translations', // <-- change the path of the translation files
        // fallbackLocale: AppLanguage().locale,
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<AppTheme>(
              create: (_) => AppTheme(),
            ),
            ChangeNotifierProvider<AppLanguage>(
              create: (_) => AppLanguage(),
            ),
          ],
          builder: (context, _) {
            final appTheme = context.watch<AppTheme>();
            final appLanguage = context.watch<AppLanguage>();
            return MaterialApp.router(
              routerConfig: router,
              themeMode: appTheme.mode,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: appLanguage.locales,
              locale: appLanguage.locale,
              debugShowCheckedModeBanner: false,
              darkTheme: ThemeData.dark(),
              title: "Kobi",
              theme: ThemeData.light(),
            );
          },
        ));
  }
}
