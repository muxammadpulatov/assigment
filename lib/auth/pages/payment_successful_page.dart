import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/Img_p.dart';
import '../../core/commont/constants/Route_n.dart';
import '../../core/commont/constants/strings/Auth_strings.dart';
import '../../core/commont/widgets/button.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';

class PaymentSuccessfulPage extends StatelessWidget {
  const PaymentSuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppResponsive.width(0.064),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: AppResponsive.height(0.02),
            children: [
              SizedBox(
                width: AppResponsive.width(0.57),
                height: AppResponsive.height(0.21),
                child: Image.asset(
                  ImgPaths.orderConfirmation,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                AuthStrings.orderConfirmed,
                style: AppTextStyles.bigTextSmaller(color: AppColors.white),
              ),
              Text(
                AuthStrings.confirmationMessage,
                textAlign: TextAlign.center,
                style: AppTextStyles.titleSmaller(color: AppColors.white),
              ),
              Button(
                onPressed: () {
                  Navigator.pushNamed(
                      context, RouteNames.transactionDetailsPage);
                },
                childWg: Text(
                  AuthStrings.seeDetails,
                  style: AppTextStyles.titleSmaller(color: AppColors.black),
                ),
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
