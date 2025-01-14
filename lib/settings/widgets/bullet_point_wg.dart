import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/utils/app_text_styles.dart';

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("  • ", style: AppTextStyles.bodyBigger(color: AppColors.black)),
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.bodyBigger(color: AppColors.black),
          ),
        ),
      ],
    );
  }
}
