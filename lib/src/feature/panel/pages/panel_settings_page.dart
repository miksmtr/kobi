import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kobi/src/language.dart';
import 'package:provider/provider.dart';

import '../../../constant/padding_size.dart';
import '../../../theme.dart';
import '../general_widget/general_widget.dart';

class PanelSettingsPage extends StatefulWidget {
  const PanelSettingsPage({
    super.key,
  });

  @override
  State<PanelSettingsPage> createState() => _PanelSettingsPageState();
}

class _PanelSettingsPageState extends State<PanelSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildChangingThemeRadioButtons(),
        Divider(),
        buildChangingLanguageRadioButtons(),
      ],
    );
  }

  Widget buildChangingThemeRadioButtons() {
    final appTheme = context.watch<AppTheme>();
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(lowPadding),
          child: Row(
            children: [
              Text(
                tr('theme_select_title'),
                style: appTheme.bigTextStyle,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Column(
          children: ThemeMode.values.map((item) {
            if (item == ThemeMode.system) {
              return Container();
            }
            return ListTile(
              title: Text(
                tr(item.name),
              ),
              leading: Radio<ThemeMode>(
                value: item,
                groupValue: appTheme.mode,
                onChanged: (ThemeMode? value) {
                  appTheme.mode = item;
                },
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget buildChangingLanguageRadioButtons() {
    final appTheme = context.watch<AppTheme>();
    final appLanguage = context.watch<AppLanguage>();
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(lowPadding),
          child: Row(
            children: [
              Text(
                tr('language_select_title'),
                style: appTheme.bigTextStyle,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Column(
          children: appLanguage.locales.map((item) {
            return ListTile(
              title: Text(
                tr(item.languageCode),
              ),
              leading: Radio<Locale>(
                value: item,
                groupValue: appLanguage.locale,
                onChanged: (Locale? value) async {
                  await appLanguage.setLocale(context, value!);
                },
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
