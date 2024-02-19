import 'package:flutter/material.dart';

showSuccessDialog(BuildContext context,) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.green,
        title: Text("Login Successful",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        content: Text(
          "You have have been loged in successful",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      );
    },
  );
}
