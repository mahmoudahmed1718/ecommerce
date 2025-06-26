import 'package:bloc/bloc.dart';
import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/repo/product_repo/product_repo.dart';
import 'package:meta/meta.dart';

part 'products_cubit_state.dart';

class ProductsCubit extends Cubit<ProductsCubitState> {
  int productsLength = 0;
  final ProductRepo productRepo;
  ProductsCubit({required this.productRepo}) : super(ProductsCubitInitial());
  Future<void> fetchProducts() async {
    emit(ProductsCubitLoadingState());
    final products = await productRepo.getProducts();
    products.fold(
      (fail) {
        emit(ProductsCubitErrorState(errorMessage: fail.message));
      },
      (products) {
        productsLength = products.length;
        emit(ProductsCubitSuccessState(products: products));
      },
    );
  }

  Future<void> fetchBestSellingProducts() async {
    emit(ProductsCubitLoadingState());
    final products = await productRepo.getBestSellingProducts();
    products.fold(
      (fail) {
        emit(ProductsCubitErrorState(errorMessage: fail.message));
      },
      (products) {
        emit(ProductsCubitSuccessState(products: products));
      },
    );
  }
}
