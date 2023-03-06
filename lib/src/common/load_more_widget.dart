import 'package:flutter/material.dart';

class LoadMoreDataWidget extends StatelessWidget {
  final Function() loadMore;
  const LoadMoreDataWidget({super.key, required this.loadMore});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: this.loadMore,
      child: Row(
        children: [
          Text("LoadMore"),
        ],
      ),
    );
  }
}
