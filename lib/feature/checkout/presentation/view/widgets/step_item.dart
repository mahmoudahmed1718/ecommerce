import 'package:ecommerce/feature/checkout/presentation/view/widgets/active_step_item.dart';
import 'package:ecommerce/feature/checkout/presentation/view/widgets/in_active_step_item.dart';
import 'package:flutter/material.dart';

class StepItem extends StatelessWidget {
  const StepItem({
    super.key,
    required this.index,
    required this.text,
    required this.isactive,
  });
  final String index, text;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: InActiveStepItem(text: text, index: index),
      secondChild: ActiveStepItem(text: text),
      crossFadeState:
          isactive ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: Duration(milliseconds: 300),
    );
  }
}
