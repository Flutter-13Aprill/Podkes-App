import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// -- Screens
import 'package:podkes/screens/onboarding_screen.dart';

// -- External Package
import 'package:google_fonts/google_fonts.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  // Force Portrait Mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, 
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        scaffoldBackgroundColor: Color(0xff1F1D2B),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff1F1D2B)
        ),


        textTheme: TextTheme(

          // Name of the app in onboarding
          titleLarge: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 36,
            letterSpacing: 0.3,
            color: Colors.white
          ),

          // Titles for appbars
          titleMedium: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            letterSpacing: 0.3,
            color: Colors.white,
            
          ),

          // For recently  played titles
          labelMedium: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            letterSpacing: 0.5,
            color: Color(0xffFFFFFF)
          ),

          // Titles in Discovery
          titleSmall: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            letterSpacing: 0.5,
            color: Color(0xffF5F5FF),
          ),

          
          // For profile (about, privacy, and so on) and changing profile
          labelSmall: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: 0.5,
            color: Color(0xffF9F9FA)
          ),
          

          // For onboarding description
           bodySmall: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            letterSpacing: 0.5,
            color: Color(0xffC4C4C4),
          ),

          // -- For Textfield, recently played, and author name in discover
          displaySmall: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            color: Color(0xffFFFFFF)
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen()
    );
  }
}

