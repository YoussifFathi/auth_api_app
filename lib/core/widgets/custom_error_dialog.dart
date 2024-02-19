import 'package:flutter/material.dart';

showErrorDialog(BuildContext context, String errorMessage) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.red,
        title: Text("Login Error",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        content: Text(
          errorMessage,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      );
    },
  );
}
