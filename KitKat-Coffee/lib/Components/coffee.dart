import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  final String nome;
  final String preco;
  final String imagem;

  const CoffeeCard({
    super.key,
    required this.nome,
    required this.preco,
    required this.imagem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 270,
      decoration: BoxDecoration(
        color: const Color(0xFFFCE5C1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),

          Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              color: const Color(0xFFFCF4EC),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Image.network(imagem, width: 100)),
          ),

          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nome,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      preco,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(Icons.add_shopping_cart),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


