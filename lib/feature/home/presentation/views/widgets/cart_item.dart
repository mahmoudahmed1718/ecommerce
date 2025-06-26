import 'package:ecommerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 73,
            height: 92,
            color: Color(0XFFF3F5F7),
            child: Image.asset(Assets.imagesAppIcon),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Fruit Name'),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete, color: Colors.red),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('3 kg')],
                ),

                Row(children: []),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
