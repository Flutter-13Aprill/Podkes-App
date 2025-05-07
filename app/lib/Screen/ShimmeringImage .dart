import 'package:flutter/material.dart';

class DilogShow extends StatefulWidget {
  const DilogShow({super.key});

  @override
  State<DilogShow> createState() => _DilogShow();
}

class _DilogShow extends State<DilogShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 400,
                      width: 500,
                      color: Colors.purple,
                      // padding: EdgeInsets.all(80),
                      child: Column(
                        children: [
                          Text("data"),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("press here to move "),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Text("press"),
          ),

          ElevatedButton(onPressed: () {
             showModalBottomSheet(context: context, builder: (context){
              return Container(
                width: 200,height: 200,
                color: Colors.blue,
              );
             });
          }, child: Text("press here")),
        ],

      ),
    );
  }
}
