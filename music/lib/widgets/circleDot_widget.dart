import 'package:flutter/material.dart';
import 'package:music/controllers/circlerDot_controller.dart';

class CircleDot extends StatelessWidget {
   CircleDot({super.key, this.isActive = false});
  final bool isActive;
  // init Circlerdot Controller controller 
  final CirclerdotController controller=CirclerdotController();
  @override
  Widget build(BuildContext context) {
    return Container(
      // call select widht to return with 
      width: controller.selectWidth(isActive) ,
      height: 10,
      
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(100),
        // call select dot color to return the color 
        color:controller.selectDotColor(isActive)
            
      ),
    );
  }
}
