import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.icon,
    required this.text,
    required this.childIcon,
    this.onTap,
  });
  final IconData icon;
  final String text;
  final Widget childIcon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.primaryColor),
              const SizedBox(width: 4),
              Text(text, style: TextStyles.semiBold16),
            ],
          ),
          Spacer(),
          childIcon,
        ],
      ),
    );
  }
}
