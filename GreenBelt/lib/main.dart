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

// Tela Onboarding 1 -Flores
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
        child: Column(
          children: [
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

            //Título
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

            // Descrição
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Encontre as melhores flores da região, ideais para presentear, decorar ou celebrar momentos especiais.",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
            ),

            const SizedBox(height: 30),

            /// Indicador bolinha
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

            //botão proximo
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40),
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

//tela Onboarding 2 - Preço

class OnboardingPriceWidget extends StatelessWidget {
  const OnboardingPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: SingleChildScrollView(
        child: Column(
          children: [

            //circulo de canto
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

            //título
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

            //descrição
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Confira as melhores opções de preços da região, aproveitando qualidade e economia na hora de escolher.",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
            ),

            const SizedBox(height: 30),


            //progresso
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


            //botão next
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 40,
              ),
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

//tela 3 - Onboarding Start

class OnboardingStartWidget extends StatelessWidget {
  const OnboardingStartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: SingleChildScrollView(
        child: Column(
          children: [

            //circulo no meio
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


            //título 
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

            //descrição
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Explore nossos arranjos e encontre o toque perfeito para cada ocasião.",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
            ),

            const SizedBox(height: 30),

            //progresso
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

            //botão start
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 40,
              ),
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


//tela splash 
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TelaHomePage(),
                          ),
                        );
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

          // Botão voltar
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 240,
              height: 90,
              decoration: const BoxDecoration(
                color: Color(0xFF871F78),
                borderRadius: BorderRadius.only(topRight: Radius.circular(200)),
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

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, -1.03),
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
              height: 560,
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
                    Row(
                      children: const [
                        Icon(Icons.person, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          "Username:",
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
                        hintText: "Insert your username",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),

                    const SizedBox(height: 25),

                    const SizedBox(height: 25),

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
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Insert your email",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 25),

                    const SizedBox(height: 25),

                    Row(
                      children: const [
                        Icon(Icons.password_sharp, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          "Password:",
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
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Insert your password",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 30),

                    //botão sign up
                    ElevatedButton(
                      onPressed: () {
                        print("Login pressed");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB1449C),
                        minimumSize: const Size(300, 50),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          child: Checkbox(
                            value: checkboxValue,

                            onChanged: (newValue) {
                              setState(() {
                                checkboxValue = newValue!;
                              });
                            },

                            activeColor: const Color(0xFF871F78),
                            checkColor: Colors.white,
                            side: const BorderSide(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "Allow Term & Conditions",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

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

          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 240,
              height: 90,
              decoration: const BoxDecoration(
                color: Color(0xFF871F78),
                borderRadius: BorderRadius.only(topRight: Radius.circular(200)),
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

class TelaHomePage extends StatefulWidget {
  const TelaHomePage({super.key});

  @override
  State<TelaHomePage> createState() => _TelaHomePageState();
}

class _TelaHomePageState extends State<TelaHomePage> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDEE9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                            color: const Color(0xFF6E7E89),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),

                        Row(
                          children: [
                            const Icon(
                              Icons.location_pin,
                              color: Color(0xFFBA2D2D),
                              size: 20,
                            ),
                            Text(
                              "Campinas, SP",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down_rounded),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        _buildHeaderIcon(Icons.shopping_cart_checkout_outlined),
                        const SizedBox(width: 15),
                        _buildHeaderIcon(Icons.notifications_none),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Insira sua pesquisa aqui',
                            prefixIcon: Icon(Icons.search_sharp, size: 30),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFF871F78),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.filter_list, color: Colors.white),
                    ),
                  ],
                ),
              ),

              _buildSectionHeader("Categories", "See all"),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://t4.ftcdn.net/jpg/02/40/86/83/360_F_240868381_H0yM2TZRttm5mLuDXJoCONKj9B5vZvPh.jpg',
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              _buildSectionHeader("Recommended", "See all"),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildProductCard(
                      'Bouquet Deluxe',
                      'https://cdn.shopify.com/s/files/1/0745/4412/0085/files/Deluxe-2_4.png?v=1757527407',
                      MediaQuery.of(context).size.width * 0.42,
                    ),
                    _buildProductCard(
                      'Orquídea Branca',
                      'https://www.enrose.net/cdn/shop/files/4C2B9EBA-D190-4E4F-94BB-87404B6D0144.png?v=1729689077&width=1946',
                      MediaQuery.of(context).size.width * 0.42,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // fixo
        onTap: null, // sem interação
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

Widget _buildHeaderIcon(IconData icon) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Icon(icon, size: 24, color: Colors.black),
  );
}

Widget _buildSectionHeader(String title, String action) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          action,
          style: const TextStyle(
            color: Color(0xFF871F78),
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    ),
  );
}

Widget _buildProductCard(String name, String imageUrl, double width) {
  return Container(
    width: width,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        const Align(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.favorite_border,
            color: Color(0xFFDF1919),
            size: 20,
          ),
        ),
        Image.network(
          imageUrl,
          height: 100,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.image_not_supported);
          },
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            size: 14,
            color: Colors.white,
          ),
          label: const Text(
            "Buy",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFB1449C),
            minimumSize: const Size(double.infinity, 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    ),
  );
}
