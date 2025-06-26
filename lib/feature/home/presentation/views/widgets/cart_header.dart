import 'package:flutter/material.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: Color(0XFFEBF9F1)),
      child: Text(
        'you have 2 items in your cart',
        style: TextStyle(
          color: Color(0XFF1B5E37),
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: 'Cairo',
          height: 0.12,
        ),
      ),
    );
  }
}
