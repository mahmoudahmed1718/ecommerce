import 'package:ecommerce/core/cubits/cubit/products_cubit_cubit.dart';
import 'package:ecommerce/core/widgets/custom_error.dart';
import 'package:ecommerce/core/helper/get_dummy_product.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/products_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsGridViewBlocBuilder extends StatelessWidget {
  const ProductsGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsCubitState>(
      builder: (context, state) {
        if (state is ProductsCubitSuccessState) {
          return PrductsGridView(products: state.products);
        } else if (state is ProductsCubitErrorState) {
          return SliverToBoxAdapter(
            child: CustomError(errorMessage: state.errorMessage),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: PrductsGridView(products: getDummyProductsList()),
          );
        }
      },
    );
  }
}
