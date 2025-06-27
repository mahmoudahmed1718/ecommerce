part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class CartProductAdd extends CartState {}

final class CartProductRemove extends CartState {}
