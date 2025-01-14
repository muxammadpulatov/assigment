import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';

class AuthCheckButtonWg extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const AuthCheckButtonWg(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.height(0.06),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Adjust the value as needed
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              text,
              style: AppTextStyles.bodyBigger(color: AppColors.white),
            ),
            Icon(
              Icons.check_circle,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
