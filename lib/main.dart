import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.standard,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("appBar"),
        ),
        body: ResponsiveLayoutBuilder(
          small: (BuildContext context, Widget? widget) {
            return const Text("small");
          },
          large: (BuildContext context, Widget? widget) {
            return const Text("large");
          },
          medium: (BuildContext context, Widget? widget) {
            return const Text("medium");
          },
        ),
      ),
    );
  }
}
