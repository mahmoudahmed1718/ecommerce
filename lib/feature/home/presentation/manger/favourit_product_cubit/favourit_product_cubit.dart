import 'package:ecommerce/core/entites/product_entity.dart';
import 'package:ecommerce/core/repo/favourit_product_repo/favourit_product_repo.dart';
import 'package:ecommerce/feature/home/presentation/manger/favourit_product_cubit/favourit_product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritProductCubit extends Cubit<FavouritProductState> {
  final FavouriteProductRepo favouriteProductRepo;
  FavouritProductCubit(this.favouriteProductRepo)
    : super(FavouritProductInitial());
  void addFavouriteProduct({required ProductEntity product}) async {
    emit(FavouritProductLoading());
    final result = await favouriteProductRepo.addFavouriteProduct(
      product: product,
    );
    result.fold(
      (failure) => emit(FavouritProductFailure(message: failure.message)),
      (_) => emit(FavouritProductSuccess()),
    );
  }
}
