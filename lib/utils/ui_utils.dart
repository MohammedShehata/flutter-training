import 'package:flutter/material.dart';

void showMessage(context, String? message) {
  if (message == null) return;

  final messenger = ScaffoldMessenger.of(context);
  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
}
