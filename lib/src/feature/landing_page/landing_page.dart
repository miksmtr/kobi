import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        OutlinedButton(
            onPressed: () {
              context.go("/panel");
            },
            child: Text("Panel"))
      ]),
      body: Column(
        children: [
          Center(
            child: Text("bodyu"),
          )
        ],
      ),
    );
  }
}
