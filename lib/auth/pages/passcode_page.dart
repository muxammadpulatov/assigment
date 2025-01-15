import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/Route_n.dart';
import '../../core/commont/constants/strings/Auth_strings.dart';
import '../../core/commont/widgets/app_bar.dart';
import '../../core/commont/widgets/button.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';
import '../widgets/passcode_input_container_wg.dart';

class PasscodePage extends StatelessWidget {
  const PasscodePage({super.key});

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
              AuthStrings.passcode,
              style: AppTextStyles.bigTextBigger(color: AppColors.black),
            ),
            Text(
              AuthStrings.enterPasscode,
              style: AppTextStyles.bodyBigger(color: AppColors.grey),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                AuthStrings.forgotPasscode,
                style: AppTextStyles.bodyBigger(color: AppColors.blue),
              ),
            ),
            PasscodeInputContainerWg(),
            Button(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.paymentSuccessfulPage);
              },
              childWg: Text(
                AuthStrings.enter,
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
