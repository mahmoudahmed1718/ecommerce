import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 16),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30),
          ),
          color: Color(0XFFF1F8E9),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Color(0XFF1B5E37),
              ),
              child: Center(child: SvgPicture.asset(image)),
            ),
            const SizedBox(width: 4),
            Text(
              text,
              style: TextStyles.semiBold11.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
