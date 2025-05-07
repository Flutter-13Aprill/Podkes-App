import 'package:flutter/material.dart';
import 'package:podkes_app/Screen/Main_Navigation_Screen.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1A2B),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1A2B),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MainNavigationScreen()),
            );
          },
        ),
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(34),
        child: Column(
          children: [
            SizedBox(height: 20),
            // Avatar
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/Avatar.png'),
            ),
            SizedBox(height: 16),
            // Change profile text
            Text(
              'Change Profile',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 32),
            // Menu box
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF2D2B40),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  _buildMenuItem(
                    icon: Icons.dark_mode,
                    color: Color(0xFFFFC93C),
                    label: 'Change Theme',
                    onTap: () {}, 
                  ),
                  Divider(color: Colors.white10, height: 1),
                  _buildMenuItem(
                    icon: Icons.lock,
                    color: Color(0xFFDA6FFF),
                    label: 'Privacy',
                    onTap: () {}, 
                  ),
                  Divider(color: Colors.white10, height: 1),
                  _buildMenuItem(
                    icon: Icons.info_outline,
                    color: Color(0xFF53C2EF),
                    label: 'About',
                    onTap: () {}, 
                  ),
                  Divider(color: Colors.white10, height: 1),
                  _buildMenuItem(
                    icon: Icons.logout,
                    color: Color(0xFFFF6B6B),
                    label: 'Logout',
                    onTap: () => _confirmLogout(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Menu item layout
  Widget _buildMenuItem({
    required IconData icon,
    required Color color,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            // Icon container
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Colors.white),
            ),
            SizedBox(width: 16),
            // Label text
            Expanded(
              child: Text(
                label,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Show logout confirmation dialog
  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Color(0xFF2D2B40),
        title: Text('Logout', style: TextStyle(color: Colors.white)),
        content: Text(
          'Are you sure you want to logout?',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel', style: TextStyle(color: Colors.grey)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            
            },
            child: Text('Logout', style: TextStyle(color: Colors.redAccent)),
          ),
        ],
      ),
    );
  }
}
