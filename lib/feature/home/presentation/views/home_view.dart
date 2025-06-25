import 'package:ecommerce/core/cubits/cubit/products_cubit_cubit.dart';
import 'package:ecommerce/core/repo/product_repo/product_repo.dart';
import 'package:ecommerce/core/services/get_it_service.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(productRepo: getIt.get<ProductRepo>()),
      child: HomeViewBody(),
    );
  }
}
