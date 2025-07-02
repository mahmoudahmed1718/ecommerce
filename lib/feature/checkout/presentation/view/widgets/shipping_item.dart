import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subtitl,
    required this.price,
  });
  final String title, subtitl, price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: const Color(0x33D9D9d9),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: Color(0XFF949D9E)),
                ),
              ),
            ),

            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyles.semiBold13),
                const SizedBox(height: 6),
                Text(
                  subtitl,
                  style: TextStyles.regular13.copyWith(
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Text(
                '$price EGP',
                style: TextStyles.bold13.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
