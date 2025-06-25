import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widgets/best_selling_header.dart';
import 'package:ecommerce/core/widgets/featured_item.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/best_selling_grid_view.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
                FeaturedItem(),
                const SizedBox(height: 12),

                BestSellingHeader(),
                const SizedBox(height: 12),
              ],
            ),
          ),
          BestSellingGridView(),
        ],
      ),
    );
  }
}
