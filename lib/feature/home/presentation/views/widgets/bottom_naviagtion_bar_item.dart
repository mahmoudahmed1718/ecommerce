import 'package:ecommerce/feature/home/domain/entites/navigation_bar_item_entity.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/active_item.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/in_active_item.dart';
import 'package:flutter/material.dart';

class BottomNavigationbarItem extends StatelessWidget {
  const BottomNavigationbarItem({
    super.key,
    required this.selected,
    required this.navigationBarItemEntity,
  });

  final bool selected;
  final NavigationBarItemEntity navigationBarItemEntity;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        return ScaleTransition(scale: animation, child: child);
        // You can use FadeTransition, SlideTransition, or combine multiple
      },
      child:
          selected
              ? ActiveItem(
                key: const ValueKey('active'), // Important for switching
                image: navigationBarItemEntity.activeIcon,
                text: navigationBarItemEntity.title,
              )
              : InActiveItem(
                key: const ValueKey('inactive'),
                image: navigationBarItemEntity.inactiveIcon,
              ),
    );
  }
}
