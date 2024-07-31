import 'package:flutter/material.dart';

class RoundedThumbnailImage extends StatelessWidget {
  const RoundedThumbnailImage({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
