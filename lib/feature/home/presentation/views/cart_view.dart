import 'package:ecommerce/feature/home/presentation/manger/cart_item_cubit/cart_item_cubit.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CartItemCubit(),
        child: CartViewBody(),
      ),
    );
  }
}
