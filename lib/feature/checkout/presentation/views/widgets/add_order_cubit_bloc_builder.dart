import 'package:ecommerce/core/widgets/error_snack_bar.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/custom_modal_progress_hud.dart';
import 'package:ecommerce/feature/checkout/presentation/views/manger/add_order_cubit/add_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddOrderCubitBlocBuilder extends StatelessWidget {
  const AddOrderCubitBlocBuilder({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
        if (state is AddOrderSuccess) {
          buildErrorSnackBar(context, errorMessage: 'Order added successfully');
        } else if (state is AddOrderFailure) {
          buildErrorSnackBar(context, errorMessage: state.message);
        }
      },
      builder: (context, state) {
        return CustomModalProgressHud(
          isLoading: state is AddOrderLoading ? true : false,
          child: child,
        );
      },
    );
  }
}
