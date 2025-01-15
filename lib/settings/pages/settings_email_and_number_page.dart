import 'package:assigment/settings/pages/settings_page.dart';
import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/strings/Auth_strings.dart';
import '../../core/commont/constants/strings/settings_strings.dart';
import '../../core/commont/widgets/app_bar.dart';
import '../../core/commont/widgets/button.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';
import '../widgets/text_icon_row_wg.dart';

class SettingsEmailAndNumberPage extends StatelessWidget {
  const SettingsEmailAndNumberPage({super.key});

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
          spacing: AppResponsive.height(0.02),
          children: [
            Text(SettingsStrings.emailAndMobile,
                style: customTxtStyle(fontSize: 0.03)),
            // verification
            Row(
              spacing: AppResponsive.width(0.032),
              children: [
                Icon(
                  Icons.verified,
                  size: AppResponsive.width(0.06),
                  color: AppColors.grey,
                ),
                Text(
                  SettingsStrings.unverified,
                  style: AppTextStyles.titleSmaller(color: AppColors.red),
                ),
              ],
            ),
            TextIconRowWg(
                text: "+423496458", onPressed: () {}, icon: Icons.edit),
            Button(
                onPressed: () {},
                childWg: Text(
                  AuthStrings.enter,
                  style: AppTextStyles.titleSmaller(color: AppColors.white),
                ),
                color: AppColors.blue),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    SettingsStrings.email,
                    style: customTxtStyle(fontSize: 0.02),
                  ),
                  Text(
                    SettingsStrings.emailDescription,
                    style: AppTextStyles.bodyBigger(color: AppColors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
