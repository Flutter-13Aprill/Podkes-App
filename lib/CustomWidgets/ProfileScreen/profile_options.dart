import 'package:flutter/material.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: const Color.fromRGBO(37, 40, 54, 1),
        child: Column(
          spacing: 8,
          children: [
            SizedBox(),
            ListTile(
              leading: Image.asset(
                'assets/images/changeTheme.png',
                height: 32,
                width: 32,
              ),
              title: const Text(
                'Change Theme',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Color.fromRGBO(255, 255, 255, 0.06)),
            ListTile(
              leading: Image.asset(
                'assets/images/privacy.png',
                height: 32,
                width: 32,
              ),
              title: const Text(
                'Privacy',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Color.fromRGBO(255, 255, 255, 0.06)),
            ListTile(
              leading: Image.asset(
                'assets/images/about.png',
                height: 32,
                width: 32,
              ),
              title: const Text('About', style: TextStyle(color: Colors.white)),
            ),
            Divider(color: Color.fromRGBO(255, 255, 255, 0.06)),
            ListTile(
              leading: Image.asset(
                'assets/images/logout.png',
                height: 32,
                width: 32,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
