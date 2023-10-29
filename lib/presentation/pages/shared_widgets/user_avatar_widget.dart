import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class UserAvatarWidget extends StatelessWidget {
  final String avatarUrl;

  const UserAvatarWidget({
    super.key,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      avatarUrl,
      cache: true,
      width: 60,
      height: 60,
      fit: BoxFit.fitWidth,
      shape: BoxShape.circle,
    );
  }
}
