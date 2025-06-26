import 'package:flutter/material.dart';

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton({
    super.key,
    this.onTap,
    required this.backgroundColor,
    required this.iconColor,
    required this.icon,
  });
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 24,
        backgroundColor: backgroundColor,
        child: Icon(icon, color: iconColor, size: 20),
      ),
    );
  }
}
