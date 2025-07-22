abstract class FavouritProductState {}

class FavouritProductInitial extends FavouritProductState {}

class FavouritProductLoading extends FavouritProductState {}

class FavouritProductSuccess extends FavouritProductState {}

class FavouritProductFailure extends FavouritProductState {
  final String message;
  FavouritProductFailure({required this.message});
}
