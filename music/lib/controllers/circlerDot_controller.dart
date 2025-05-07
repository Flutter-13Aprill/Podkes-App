import 'dart:ui';

class CirclerdotController {
  Color selectDotColor(bool isActive){
    return 
    isActive ?  Color.fromRGBO(82, 82, 152, 1)  :  Color.fromRGBO(123, 128, 133, 1);
  }
  double selectWidth(bool isActive){
    return isActive? 21 : 10;
  }
}