import 'package:flutter/material.dart';

///Displays a horizontal list of category buttons
class Catogry extends StatelessWidget {
  const Catogry({super.key});

  @override
  Widget build(BuildContext context) {
    // List of category
    List<String> categoryItems = ['All', 'Life', 'Comedy', 'Tech'];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categoryItems.length,
      itemBuilder:
          (context, index) => Row(
            children: [
              SizedBox(
                //Category button
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      Color.fromRGBO(47, 49, 66, 1),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categoryItems[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
            ],
          ),
    );
  }
}
