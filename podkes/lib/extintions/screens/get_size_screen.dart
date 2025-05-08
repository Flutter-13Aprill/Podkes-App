import 'package:flutter/material.dart';

extension Screens on BuildContext {

    double getWidth() {
      return MediaQuery.sizeOf(this).width;
    }
    double getHeight() {
      return MediaQuery.sizeOf(this).height;
  }
}