import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';

class TextIconRowWg extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const TextIconRowWg({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextStyles.bodyBigger(color: AppColors.black),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
          iconSize: AppResponsive.width(0.08),
        ),
      ],
    );
  }
}
