import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: size,
      width: size,
      fit: BoxFit.contain,
      errorBuilder:
          (context, error, stackTrace) => Container(
            height: size,
            width: size,
            color: Colors.grey,
            child: const Icon(Icons.broken_image),
          ),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          height: size,
          width: size,
          alignment: Alignment.center,
          child: const CircularProgressIndicator(strokeWidth: 2),
        );
      },
    );
  }
}
