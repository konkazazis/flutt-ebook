import 'package:flutter/material.dart';

class ExitButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.close),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
