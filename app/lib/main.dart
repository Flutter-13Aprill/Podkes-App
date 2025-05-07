import 'package:app/Screen/ShimmeringImage%20.dart';
 import 'package:app/Screen/getting_started_screen.dart';

 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
Widget build(BuildContext context) {
  return ScreenUtilInit(
    designSize: const Size(428, 926),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        //theme: AppTheme.theme, 
        home:  GettingStartedScreen(), // Use const for performance
      ); // MaterialApp
    },
  );
}
}
 