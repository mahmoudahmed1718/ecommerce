import 'package:bloc/bloc.dart';
import 'package:ecommerce/core/repo/orders_repo/order_repo.dart';
import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';
import 'package:equatable/equatable.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  final OrderRepo orderRepo;
  AddOrderCubit({required this.orderRepo}) : super(AddOrderInitial());

  void addOrder({required OrderEntity order}) async {
    emit(AddOrderLoading());
    final result = await orderRepo.addOrder(order: order);
    result.fold(
      (failure) => emit(AddOrderFailure(message: failure.message)),
      (_) => emit(AddOrderSuccess()),
    );
  }
}
