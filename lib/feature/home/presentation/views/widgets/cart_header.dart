import 'package:ecommerce/feature/home/presentation/manger/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(color: Color(0XFFEBF9F1)),
      child: Center(
        child: Text(
          'you have ${context.watch<CartCubit>().cartEntity.carts.length} items in your cart',
          style: TextStyle(
            color: Color(0XFF1B5E37),
            fontSize: 13,
            fontWeight: FontWeight.w400,
            fontFamily: 'Cairo',
            height: 0.12,
          ),
        ),
      ),
    );
  }
}
