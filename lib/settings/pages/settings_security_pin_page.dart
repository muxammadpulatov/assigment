import 'package:assigment/auth/widgets/passcode_input_container_wg.dart';
import 'package:assigment/core/commont/constants/Route_n.dart';
import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/strings/settings_strings.dart';
import '../../core/commont/widgets/app_bar.dart';
import '../../core/commont/widgets/button.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';

class SettingsSecurityPinPage extends StatelessWidget {
  const SettingsSecurityPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsive.width(0.042),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppResponsive.height(0.019),
          children: [
            SizedBox(height: AppResponsive.height(0.06)),
            Text(
              SettingsStrings.setPinTitle,
              style: AppTextStyles.bigTextBigger(color: AppColors.black),
            ),
            Text(
              SettingsStrings.setPinDescription,
              style: AppTextStyles.bodyBigger(color: AppColors.grey),
            ),
            PasscodeInputContainerWg(),
            // Modal bottom sheet should be displayed
            Button(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.paymentSuccessfulPage);
              },
              childWg: Text(
                SettingsStrings.setPin,
                style: AppTextStyles.titleSmaller(color: AppColors.white),
              ),
              color: AppColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

