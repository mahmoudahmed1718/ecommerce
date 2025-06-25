import 'package:ecommerce/core/cubits/cubit/products_cubit_cubit.dart';
import 'package:ecommerce/core/widgets/custom_error.dart';
import 'package:ecommerce/core/widgets/get_dummy_product.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/best_selling_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsCubitState>(
      builder: (context, state) {
        if (state is ProductsCubitSuccessState) {
          return BestSellingGridView(products: state.products);
        } else if (state is ProductsCubitErrorState) {
          return CustomError(errorMessage: state.errorMessage);
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellingGridView(products: getDummyProductsList()),
          );
        }
      },
    );
  }
}
