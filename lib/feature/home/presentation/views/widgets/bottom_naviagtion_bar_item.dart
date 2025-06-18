import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/feature/home/domain/entites/navigation_bar_item_entity.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/active_item.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/in_active_item.dart';
import 'package:flutter/material.dart';

class BottomNavigationbarItem extends StatelessWidget {
  const BottomNavigationbarItem({
    super.key,
    required this.isActive,
    required this.navigationBarItemEntity,
  });
  final bool isActive;
  final NavigationBarItemEntity navigationBarItemEntity;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(image: Assets.imagesVuesaxOutlineHome)
        : InActiveItem(image: navigationBarItemEntity.inactiveIcon);
  }
}
