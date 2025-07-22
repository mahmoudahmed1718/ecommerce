import 'package:ecommerce/feature/home/domain/entites/navigation_bar_item_entity.dart';
import 'package:ecommerce/feature/home/presentation/views/widgets/bottom_naviagtion_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 75,
      decoration: ShapeDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            navigationBarItems.asMap().entries.map((entry) {
              var index = entry.key;
              var item = entry.value;

              return Expanded(
                flex: index == selectedIndex ? 3 : 2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                    widget.onItemTapped(index);
                  },
                  child: BottomNavigationbarItem(
                    selected: selectedIndex == index,
                    navigationBarItemEntity: item,
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
