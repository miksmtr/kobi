import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flutter/material.dart';
import 'package:kobi/src/language.dart';
import 'package:kobi/src/theme.dart';
import 'package:provider/provider.dart';
import 'feature/authentication/pages/auth_provider.dart';
import 'routing/routes.dart';

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
        supportedLocales: AppLanguage().locales,
        path: 'assets/translations',
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<AppTheme>(
              create: (_) => AppTheme(),
            ),
            ChangeNotifierProvider<AppLanguage>(
              create: (_) => AppLanguage(),
            ),
            ChangeNotifierProvider<CAuthProvider>(
              create: (_) => CAuthProvider(),
            ),
          ],
          builder: (context, _) {
            final appTheme = context.watch<AppTheme>();
            final appLanguage = context.watch<AppLanguage>();
            List delegateList = context.localizationDelegates;
            delegateList.add(FirebaseUILocalizations.delegate);
            delegateList.forEach((element) {
              print(element.toString());
            });
            return MaterialApp.router(
              routerConfig: routes,
              themeMode: appTheme.mode,
              theme: appTheme.themeData,
              // localizationsDelegates: context.localizationDelegates,
              localizationsDelegates:
                  delegateList as Iterable<LocalizationsDelegate<dynamic>>?,
              supportedLocales: appLanguage.locales,
              locale: appLanguage.locale,
              debugShowCheckedModeBanner: false,
              darkTheme: ThemeData.dark(useMaterial3: true),
              title: "Kobi",
              //theme: ThemeData.light(),
            );
          },
        ));
  }
}
