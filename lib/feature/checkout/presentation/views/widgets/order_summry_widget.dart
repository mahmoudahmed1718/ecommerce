import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/feature/checkout/presentation/views/widgets/payment_item.dart';
import 'package:flutter/material.dart';

class OrderSummryWidget extends StatelessWidget {
  const OrderSummryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      tile: 'ملخص الطلب',
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
                '300 جنية',
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
              Text('330 جنية', style: TextStyles.bold16),
            ],
          ),
        ],
      ),
    );
  }
}
