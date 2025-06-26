import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/cubits/cubit/products_cubit_cubit.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/best_selling_view_bloc_builder.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/product_view_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: kVerticalPadding),
                const CustomHomeAppBar(),
                const SizedBox(height: kVerticalPadding),

                CustomSearchTextField(),
                const SizedBox(height: 12),

                ProductViewHeader(
                  productsLength: context.watch<ProductsCubit>().productsLength,
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
          BestSellingGridViewBlocBuilder(),
        ],
      ),
    );
  }
}
