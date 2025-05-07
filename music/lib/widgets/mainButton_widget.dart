import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.yourLogic});
  final Function yourLogic;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:104 ,bottom:37 ),
      width: 70,
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          yourLogic();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),

          ),
        ), child: Image.asset("assets/icons/arrow_left.png"),
      ),
    );
  }
}
