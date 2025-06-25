part of 'products_cubit_cubit.dart';

@immutable
sealed class ProductsCubitState {}

final class ProductsCubitInitial extends ProductsCubitState {}

final class ProductsCubitLoadingState extends ProductsCubitState {}

final class ProductsCubitSuccessState extends ProductsCubitState {
  final List<ProductEntity> products;

  ProductsCubitSuccessState({required this.products});
}

final class ProductsCubitErrorState extends ProductsCubitState {
  final String errorMessage;

  ProductsCubitErrorState({required this.errorMessage});
}
