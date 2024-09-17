import 'package:flutter/material.dart';

class NullableImage extends StatelessWidget {

  final String? imageUrl;

  const NullableImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null){
      return const SizedBox.shrink();
    }
    return Image.network(
      imageUrl!,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return const SizedBox.shrink();
      },
    );
  }
}