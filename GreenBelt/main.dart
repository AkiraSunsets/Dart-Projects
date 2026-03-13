import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: SingleChildScrollView(
        // Wrap the Column in SingleChildScrollView
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
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 40,
              ), // Added top padding for spacing
              child: ElevatedButton(
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
                      builder: (_) => const OnboardingPriceWidget(),
                    ),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20, color: Color(0xFFB1449C)),
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
      body: SingleChildScrollView(
        // Wrap the Column in SingleChildScrollView
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
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 40,
              ), // Added top padding for spacing
              child: ElevatedButton(
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
                      builder: (_) => const OnboardingStartWidget(),
                    ),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20, color: Color(0xFFB1449C)),
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
      body: SingleChildScrollView(
        // Wrap the Column in SingleChildScrollView
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
                child: Icon(Icons.spa_outlined, color: Colors.white, size: 120),
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
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 40,
              ), // Added top padding for spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 60),
                  backgroundColor: const Color(0xFFB1449C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const TelaSplash()),
                  );
                },
                child: const Text(
                  "Compre agora",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaSplash extends StatefulWidget {
  const TelaSplash({super.key});

  @override
  State<TelaSplash> createState() => _TelaSplashState();
}

class _TelaSplashState extends State<TelaSplash> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.spa_outlined, color: Color(0xFF871F78), size: 100),

            const SizedBox(height: 10),

            const Text(
              'Green Belt',
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Building your dreams',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 50),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaLogin()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF871F78),
                minimumSize: const Size(300, 55),
                elevation: 8,
                shadowColor: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaCadastro()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF871F78),
                minimumSize: const Size(300, 55),
                elevation: 8,
                shadowColor: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SocialButton(icon: FontAwesomeIcons.facebookF),
                SizedBox(width: 30),
                SocialButton(icon: FontAwesomeIcons.twitter),
                SizedBox(width: 30),
                SocialButton(icon: FontAwesomeIcons.google),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final FaIconData icon;

  const SocialButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFFB1449C),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: const Color(0xFF871F78), width: 2),
      ),
      child: Center(child: FaIcon(icon, color: Colors.white, size: 24)),
    );
  }
}

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0, -0.9),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                SizedBox(height: 50),
                Icon(Icons.spa_outlined, color: Color(0xFF871F78), size: 100),
              ],
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Container(
              width: 350,
              height: 440,
              decoration: const BoxDecoration(
                color: Color(0xff871f78),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(79),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// --- SEÇÃO EMAIL ---
                    Row(
                      children: const [
                        Icon(Icons.email_outlined, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          "Email:",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Insert your email",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),

                    const SizedBox(height: 25),

                    const SizedBox(height: 25),

                    Row(
                      children: const [
                        Icon(Icons.password, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          "Password:",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Insert your password",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 30),

                    /// Botão Login
                    ElevatedButton(
                      onPressed: () {
                        print("Login pressed");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB1449C),
                        minimumSize: const Size(300, 50),
                      ),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Sign up link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// Botão voltar
Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 240,
              height: 90,
              decoration: const BoxDecoration(
                color: Color(0xFF871F78),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200),
                ),
              ),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Back",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
