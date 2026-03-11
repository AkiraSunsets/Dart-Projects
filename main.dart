import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'GreenBelt',
    theme: ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      primaryColor: const Color(0xFFFFDEE9),
      textTheme: GoogleFonts.montserratTextTheme(),
    ),
    home: const OnboardingFlower(),
  );
  }
}


// Tela onboarding 1 - Flowers

class OnboardingFlower extends StatefulWidget {
  const OnboardingFlower({super.key});

  @override
  State<OnboardingFlower> createState() => _OnboardingFlowerState();
}

class _OnboardingFlowerState extends State<OnboardingFlower>{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: 
      Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row (
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container (
                width: 400,
                height: 450,
                decoration: BoxDecoration(
                  color: Color(0xFFB1449C),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(500),
                     bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                  )
                ),

                child: Column(
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}