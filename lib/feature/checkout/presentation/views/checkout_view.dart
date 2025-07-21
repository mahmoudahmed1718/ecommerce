import 'package:ecommerce/core/helper/get_user_data.dart';
import 'package:ecommerce/core/repo/orders_repo/order_repo.dart';
import 'package:ecommerce/core/services/get_it_service.dart';
import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';
import 'package:ecommerce/feature/checkout/presentation/views/manger/add_order_cubit/add_order_cubit.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/add_order_cubit_bloc_builder.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:ecommerce/feature/home/domain/entites/cart_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartitems});

  static const routeName = 'checkout';
  final CartEntity cartitems;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOrderCubit(orderRepo: getIt.get<OrderRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'الشحن', isNotification: false),
        body: Provider.value(
          value: OrderEntity(userId: getUserData().id, cartItems: cartitems),

          child: AddOrderCubitBlocBuilder(child: const CheckoutViewBody()),
        ),
      ),
    );
  }
}
