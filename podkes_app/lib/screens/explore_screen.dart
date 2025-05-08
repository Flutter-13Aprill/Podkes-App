import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podkes_app/extensions/screens/get_size_screen.dart';
import 'package:podkes_app/widgets/albums.dart';
import 'package:podkes_app/widgets/catogry.dart';

// Displays the Explore screen with a Drawer, search, and content sections.
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(31, 29, 43, 1),

      //Drawer to show Settings, Help and Contact
      drawer: Drawer(
        surfaceTintColor: Colors.white,
        //ListView to display a list of draw list
        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromRGBO(31, 29, 43, 1)),
              child: Text(
                'Podkes',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: const Text('Contact'),
              onTap: () {},
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(31, 29, 43, 1),
        // Leading icon button to open the drawer
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/svg/menu.svg',
                  width: context.getWidth(),
                  height: context.getHeight() / 50,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
        title: Text(
          'Podkes',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        // Notification icon
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/svg/Notification.svg',
              width: context.getWidth(),
              height: context.getHeight() / 15,
              fit: BoxFit.contain,
            ),
          ),
        ],
        // App bar bottom section with search bar
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: SearchBar(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              elevation: WidgetStateProperty.all(0.0),
              backgroundColor: WidgetStateProperty.all(
                Color.fromRGBO(37, 40, 54, 1),
              ),
              hintText: 'Search',
              trailing: [Icon(Icons.search)],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              child: Column(
                spacing: 16,
                children: [
                  // Category widget
                  Expanded(flex: 1, child: Catogry()),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Trending',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Albums widget
                  Expanded(flex: 10, child: Albums()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
