import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:flutter/material.dart';

class BestSellingFruitsView extends StatelessWidget {
  const BestSellingFruitsView({super.key});
  static const String routeName = '/best-selling-fruits-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context, title: 'Best Selling Fruits'));
  }
}
