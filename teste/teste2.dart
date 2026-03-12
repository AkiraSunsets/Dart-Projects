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
        primaryColor: const Color(0xFFB1449C),
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: const OnboardingFlowerWidget(),
    );
  }
}

////////////////////////////////////////////
/// ONBOARDING 1
////////////////////////////////////////////

class OnboardingFlowerWidget extends StatefulWidget {
  const OnboardingFlowerWidget({super.key});

  @override
  State<OnboardingFlowerWidget> createState() => _OnboardingFlowerWidgetState();
}

class _OnboardingFlowerWidgetState extends State<OnboardingFlowerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFFFDEE9),
      body: SingleChildScrollView( // Wrap the Column in SingleChildScrollView
        child: Column(
          children: [

            /// TOP SHAPE
            Container(
              width: double.infinity,
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

            const SizedBox(height: 60),

            /// TITLE
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Melhores opções de flores",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// DESCRIPTION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Encontre as melhores flores da região, ideais para presentear, decorar ou celebrar momentos especiais.",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
            ),

            const SizedBox(height: 30),

            /// INDICATOR
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.circle_sharp, color: Color(0xFFB1449C), size: 14),
                SizedBox(width: 10),
                Icon(Icons.circle_outlined, size: 14),
                SizedBox(width: 10),
                Icon(Icons.circle_outlined, size: 14),
              ],
            ),

            // Removed Spacer here because SingleChildScrollView handles vertical space.
            // If you want to push the button to the very bottom of the scrollable area,
            // you might need to reconsider the layout or ensure the scrollable content
            // takes at least the full screen height (e.g., using a ConstrainedBox).
            // For now, the button will appear after all content.

            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40), // Added top padding for spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 60),
                  backgroundColor: const Color(0xFFFFDEE9),
                  side: const BorderSide(
                    color: Color(0xFFB1449C),
                    width: 2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const OnboardingPriceWidget(),
                    ),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFB1449C),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////////////////////////////////////////////
/// ONBOARDING 2
////////////////////////////////////////////

class OnboardingPriceWidget extends StatelessWidget {
  const OnboardingPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: SingleChildScrollView( // Wrap the Column in SingleChildScrollView
        child: Column(
          children: [

            Container(
              width: double.infinity,
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

            const SizedBox(height: 60),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Melhores opções de preços",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Confira as melhores opções de preços da região, aproveitando qualidade e economia na hora de escolher.",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.circle_outlined, size: 14),
                SizedBox(width: 10),
                Icon(Icons.circle_sharp, color: Color(0xFFB1449C), size: 14),
                SizedBox(width: 10),
                Icon(Icons.circle_outlined, size: 14),
              ],
            ),

            // Removed Spacer here
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40), // Added top padding for spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 60),
                  backgroundColor: const Color(0xFFFFDEE9),
                  side: const BorderSide(
                    color: Color(0xFFB1449C),
                    width: 2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const OnboardingStartWidget(),
                    ),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFB1449C),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////////////////////////////////////////////
/// ONBOARDING 3
////////////////////////////////////////////

class OnboardingStartWidget extends StatelessWidget {
  const OnboardingStartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: SingleChildScrollView( // Wrap the Column in SingleChildScrollView
        child: Column(
          children: [

            Container(
              width: double.infinity,
              height: 450,
              decoration: const BoxDecoration(
                color: Color(0xFFB1449C),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(500),
                  bottomRight: Radius.circular(500),
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

            const SizedBox(height: 60),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Comece agora e escolha suas flores favoritas.",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Explore nossos arranjos e encontre o toque perfeito para cada ocasião.",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.circle_outlined, size: 14),
                SizedBox(width: 10),
                Icon(Icons.circle_outlined, size: 14),
                SizedBox(width: 10),
                Icon(Icons.circle_sharp, color: Color(0xFFB1449C), size: 14),
              ],
            ),

            // Removed Spacer here
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40), // Added top padding for spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 60),
                  backgroundColor: const Color(0xFFB1449C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  // aqui iria para a HOME
                },
                child: const Text(
                  "Compre agora",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
