import 'package:ecommerce/core/utils/app_images.dart';

class NavigationBarItemEntity {
  final String title, activeIcon, inactiveIcon;

  NavigationBarItemEntity({
    required this.title,
    required this.activeIcon,
    required this.inactiveIcon,
  });
}

List<NavigationBarItemEntity> get navigationBarItems => [
  NavigationBarItemEntity(
    title: 'Home',
    activeIcon: Assets.imagesVuesaxBoldHome,
    inactiveIcon: Assets.imagesVuesaxOutlineHome,
  ),
  NavigationBarItemEntity(
    title: 'shop',
    activeIcon: Assets.imagesVuesaxBoldShoppingCart,
    inactiveIcon: Assets.imagesVuesaxOutlineShoppingCart,
  ),

  NavigationBarItemEntity(
    title: 'profile',
    activeIcon: Assets.imagesVuesaxBoldUser,
    inactiveIcon: Assets.imagesVuesaxOutlineUser,
  ),

  NavigationBarItemEntity(
    title: 'Whishlist',
    activeIcon: Assets.imagesVuesaxBoldShoppingCart,
    inactiveIcon: Assets.imagesVuesaxOutlineShoppingCart,
  ),
];
