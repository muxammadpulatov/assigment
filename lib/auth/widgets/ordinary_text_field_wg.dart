import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/utils/app_text_styles.dart';


class OrdinaryTextFieldWg extends StatelessWidget {
  final String label;
  final String hintText;

  const OrdinaryTextFieldWg(
      {super.key, required this.label, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(
          label,
          style: AppTextStyles.bodySmallerMedium(color: AppColors.grey),
        ),
        hintText: hintText,
        hintStyle: AppTextStyles.bodySmallerMedium(color: AppColors.black),
      ),
    );
  }
}
