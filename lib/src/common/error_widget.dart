import 'package:flutter/material.dart';

class FirestoreDataError extends StatelessWidget {
   Object? error;
   FirestoreDataError({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Text('Something went wrong! ${error}');
  }
}
