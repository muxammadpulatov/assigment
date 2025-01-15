import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/strings/Auth_strings.dart';
import '../../core/commont/widgets/button.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';

class PaymentConfirmationModal extends StatelessWidget {
  final VoidCallback onPressed;
  final String imgPath;
  final String title;

  const PaymentConfirmationModal(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsive.width(0.042),
        vertical: AppResponsive.height(0.039),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.bigTextSmaller(color: AppColors.black),
          ),
          SizedBox(
            height: AppResponsive.height(0.15),
            width: AppResponsive.width(0.33),
            child: Image.asset(imgPath, fit: BoxFit.contain),
          ),
          Button(
            onPressed: onPressed,
            childWg: Text(
              AuthStrings.usePasscodeInstead,
              style: AppTextStyles.titleSmaller(color: AppColors.black),
            ),
            color: AppColors.lightGrey,
          ),
        ],
      ),
    );
  }
}
