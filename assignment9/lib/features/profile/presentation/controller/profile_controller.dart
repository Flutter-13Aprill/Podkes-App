import 'package:flutter/material.dart';

class ProfileController {
  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.deepPurple[100],
            title: const Text("LogOut"),
            content: const Text("Do you want to Logout?"),
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
}
