import 'package:flutter/material.dart';
import 'package:kitkatproject/Components/coffee.dart';
import 'package:kitkatproject/Components/navigator.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF3E2),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  // Header
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Welcome to KitKat Coffee!",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "User,",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Icon(Icons.notifications_none),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Search
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              children: [
                                Icon(Icons.search),
                                SizedBox(width: 10),
                                Text("Search..."),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.filter_list),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Banner
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1509042239860-f550ce710b93',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Title
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Coffees',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFC8B33),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildCategory("All", true),
                          const SizedBox(width: 10),
                          _buildCategory("Hot Coffee", false),
                          const SizedBox(width: 10),
                          _buildCategory("Cold Coffee", false),
                          const SizedBox(width: 10),
                          _buildCategory("Special Coffees", false),
                          const SizedBox(width: 10),
                          _buildCategory("Juices", false),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Coffees
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Wrap(
                      spacing: 35,
                      runSpacing: 35,
                      children: const [
                        CoffeeCard(
                          nome: "Cafézin Brasileiro",
                          preco: "R\$ 10,00",
                          imagem:
                              "https://static.vecteezy.com/system/resources/thumbnails/053/581/271/small/a-white-coffee-cup-with-steam-rising-from-it-sits-on-a-white-saucer-png.png",
                        ),
                        CoffeeCard(
                          nome: "Cappuccino Europeu",
                          preco: "R\$ 15,00",
                          imagem:
                              "https://localibyromeos.com.au/cdn/shop/products/Coffee_Cappuccino_1200x1200.png?v=1656067280",
                        ),
                        CoffeeCard(
                          nome: "Moccacino",
                          preco: "R\$ 10,00",
                          imagem:
                              "https://www.nestleprofessional.pt/sites/default/files/styles/np_recipe_full_desk/public/2022-03/Mocaccino%20BUONDI%C2%AE.png?itok=dDindmin",
                        ),
                        CoffeeCard(
                          nome: "Café em grãos",
                          preco: "R\$ 10,00",
                          imagem:
                              "https://png.pngtree.com/png-clipart/20250507/original/pngtree-hot-coffee-cup-with-beans-for-cafe-morning-and-beverage-png-image_20939830.png",
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black26)],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavItem(Icons.home_outlined, 'Home', true),
            NavItem(Icons.shopping_cart_outlined, 'Cart', false),
            NavItem(Icons.favorite_border, 'Favorite', false),
            NavItem(Icons.person, 'Profile', false),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(String text, bool selected) {
    return Container(
      width: 120,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFF7D098) : Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
