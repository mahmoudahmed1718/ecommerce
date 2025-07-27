import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_text_styels.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndCondationWidget extends StatefulWidget {
  const TermsAndCondationWidget({super.key, required this.onchanged});
  final ValueChanged<bool> onchanged;

  @override
  State<TermsAndCondationWidget> createState() =>
      _TermsAndCondationWidgetState();
}

class _TermsAndCondationWidgetState extends State<TermsAndCondationWidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChecked: (value) {
            setState(() {
              widget.onchanged(value);
              isTermsAccepted = value;
            });
          },
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'while signing up you are accepting our, ',
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: 'Terms and Conditions',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                const TextSpan(text: ' ', style: TextStyles.semiBold13),
                TextSpan(
                  text: 'that are related to our app, ',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
