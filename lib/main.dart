import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mywork1/home.dart';
import 'package:mywork1/work2/home_movie.dart';
import 'package:mywork1/work2/onboardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'Flutter Demo',
     theme: ThemeData(
       fontFamily: GoogleFonts.openSans().fontFamily,
     ),

     home: OndoardingScreen(),
    );
  }
}


