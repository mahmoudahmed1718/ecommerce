import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/feature/checkout/domain/entites/order_entity.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/payment_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderSummryWidget extends StatelessWidget {
  const OrderSummryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      tile: 'Order Summary',
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'المجموع الفرعي :',
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              ),
              const Spacer(),
              Text(
                context.read<OrderEntity>().cartItems.totalPrice().toString(),
                textAlign: TextAlign.right,
                style: TextStyles.semiBold16,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                'التوصيل  :',
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              ),
              const Spacer(),
              Text(
                '30جنية',
                textAlign: TextAlign.right,
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              ),
            ],
          ),
          const SizedBox(height: 9),
          const Divider(thickness: .5, color: Color(0xFFCACECE)),
          const SizedBox(height: 9),
          Row(
            children: [
              const Text('الكلي', style: TextStyles.bold16),
              const Spacer(),
              Text(
                (context.read<OrderEntity>().cartItems.totalPrice() + 30)
                    .toString(),
                style: TextStyles.bold16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
