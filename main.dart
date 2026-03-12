import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
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

class _OnboardingFlowerState extends State<OnboardingFlower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 450,
                decoration: const BoxDecoration(
                  color: Color(0xFFB1449C),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(500),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.filter_vintage,
                    color: Colors.white,
                    size: 120,
                  ),
                ),
              ),

              const SizedBox(height: 50),

              const Text(
                "Melhores opções de flores",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Encontre as melhores flores da região, ideais para presentear, decorar ou celebrar momentos especiais.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.circle_sharp, color: Color(0xFFB1449C), size: 12),
                  SizedBox(width: 10),
                  Icon(Icons.circle_outlined, size: 12),
                  SizedBox(width: 10),
                  Icon(Icons.circle_outlined, size: 12),
                ],
              ),

              const SizedBox(height: 40),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 60),
                  backgroundColor: const Color(0xFFFFDEE9),
                  side: const BorderSide(color: Color(0xFFB1449C), width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingPriceWidget(),
                    ),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20, color: Color(0xFFB1449C)),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

// Onboarding Price
class OnboardingPriceWidget extends StatelessWidget {
  const OnboardingPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 450,
                decoration: const BoxDecoration(
                  color: Color(0xFFB1449C),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(500),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.attach_money_outlined,
                    color: Colors.white,
                    size: 120,
                  ),
                ),
              ),

              const SizedBox(height: 50),

              const Text(
                "Melhores opções de preços.",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Confira as melhores opções de preços da região, aproveitando qualidade e economia na hora de escolher.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.circle_outlined, size: 12),
                  SizedBox(width: 10),
                  Icon(Icons.circle_sharp, color: Color(0xFFB1449C), size: 12),
                  SizedBox(width: 10),
                  Icon(Icons.circle_outlined, size: 12),
                ],
              ),

              const SizedBox(height: 40),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 60),
                  backgroundColor: const Color(0xFFFFDEE9),
                  side: const BorderSide(color: Color(0xFFB1449C), width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingStartWidget(),
                    ),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20, color: Color(0xFFB1449C)),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

// Onboarding Start
class OnboardingStartWidget extends StatelessWidget {
  const OnboardingStartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 450,
                decoration: const BoxDecoration(
                  color: Color(0xFFB1449C),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(500),
                    bottomLeft: Radius.circular(500),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.spa_outlined,
                    color: Colors.white,
                    size: 120,
                  ),
                ),
              ),

              const SizedBox(height: 50),

              const Text(
                "Comece agora e escolha suas flores favoritas.",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Explore nossos arranjos e encontre o toque perfeito para cada ocasião.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.circle_outlined, size: 12),
                  SizedBox(width: 10),
                  Icon(Icons.circle_outlined, size: 12),
                  SizedBox(width: 10),
                  Icon(Icons.circle_sharp, color: Color(0xFFB1449C), size: 12),
                ],
              ),

              const SizedBox(height: 40),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 60),
                  backgroundColor: const Color(0xFFFFDEE9),
                  side: const BorderSide(color: Color(0xFFB1449C), width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingStartWidget(),
                    ),
                  );
                },
                child: const Text(
                  "Compre agora",
                  style: TextStyle(fontSize: 20, color: Color(0xFFB1449C)),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}


//tela home -
