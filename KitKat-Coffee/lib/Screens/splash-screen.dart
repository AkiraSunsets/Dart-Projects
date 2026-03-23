import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kitkatproject/Screens/tela-inicial.dart';

class SplashKitkatPage extends StatelessWidget {
  const SplashKitkatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      body: Stack(
        children: [
          /// Fundo
          Positioned.fill(
            child: Image.network(
              'https://www.papeiseparede.com.br/2010-thickbox_default/papel-de-parede-hora-do-cafe.jpg.webp',
              fit: BoxFit.cover,
            ),
          ),

          /// Conteúdo central
          Center(
            child: _buildCard(context),
          ),
        ],
      ),
    );
  }

  /// CARD PRINCIPAL
  Widget _buildCard(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFCE5C1),
        borderRadius: BorderRadius.circular(40),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black26,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const FaIcon(
            FontAwesomeIcons.coffee,
            color: Color(0xFF5D3131),
            size: 60,
          ),

          const SizedBox(height: 12),

          const Text(
            'KitKat Coffee',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5D3131),
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Breaking your routine with coffee.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF5D3131),
            ),
          ),

          const SizedBox(height: 30),

          _buildButton(context),
        ],
      ),
    );
  }

  /// BOTÃO
  Widget _buildButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFB3781E),
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TelaInicial(),
          ),
        );
      },
      child: const Text(
        'Get Started!',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}