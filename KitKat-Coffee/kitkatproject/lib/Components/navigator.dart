import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool ativo;

  const NavItem(this.icon, this.label, this.ativo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: ativo ? Color(0xFFF38530) : Colors.black,
        ),
        Text(
          label,
          style: TextStyle(
            fontWeight: ativo ? FontWeight.bold : FontWeight.w500,
            color: ativo ? Color(0xFFF38530) : Colors.black,
          ),
        ),
      ],
    );
  }
}