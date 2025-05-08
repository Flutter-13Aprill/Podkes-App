import 'package:flutter/material.dart';

void showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          backgroundColor: Colors.deepPurple[100],
          title: const Text("My First Dialog"),
          content: const Text("This is my first dialog"),
          actions: [
            TextButton(onPressed: () {}, child: const Text("OK")),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
          ],
        ),
  );
}
