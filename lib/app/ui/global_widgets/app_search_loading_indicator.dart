import 'package:flutter/material.dart';

class AppSearchLoadingIndicator extends StatelessWidget {
  final bool loading;
  const AppSearchLoadingIndicator(
    this.loading, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return loading
        ? ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 2, minHeight: 2),
            child: const LinearProgressIndicator(
              color: Colors.yellow,
              backgroundColor: Colors.black,
            ),
          )
        : const SizedBox.shrink();
  }
}
