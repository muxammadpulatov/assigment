import 'package:assigment/settings/pages/settings_page.dart';
import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/Img_p.dart';
import '../../core/commont/constants/strings/settings_strings.dart';
import '../../core/commont/widgets/app_bar.dart';
import '../../core/commont/widgets/button.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';
import '../widgets/bullet_point_wg.dart';
import '../widgets/settings_container_wg.dart';
import '../widgets/text_icon_row_wg.dart';

class SettingsSecurityDeleteAccountPage extends StatelessWidget {
  const SettingsSecurityDeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppResponsive.width(0.042)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppResponsive.height(0.024),
          children: [
            Text(SettingsStrings.deleteAccount,
                style: customTxtStyle(fontSize: 0.03)),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                ImgPaths.deleteAcc,
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
                height: AppResponsive.height(0.24),
              ),
            ),
            Text(
              SettingsStrings.deleteAccountSubtitle,
              style: AppTextStyles.titleBigger(color: AppColors.black),
            ),
            // warning description
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    SettingsStrings.deleteAccountDescription,
                    style: AppTextStyles.titleSmaller(color: AppColors.black),
                  ),
                  BulletPoint(text: SettingsStrings.deleteAccountPoint1),
                  BulletPoint(text: SettingsStrings.deleteAccountPoint2),
                  BulletPoint(text: SettingsStrings.deleteAccountPoint3),
                  BulletPoint(text: SettingsStrings.deleteAccountPoint4),
                ],
              ),
            ),
            // agreement
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Expanded(
                  child: Text(
                    SettingsStrings.deleteAccountConfirmation,
                    style:
                        AppTextStyles.bodySmallerRegular(color: AppColors.grey),
                  ),
                ),
              ],
            ),
            Button(
              onPressed: () {},
              childWg: Text(
                SettingsStrings.deleteAccountButton,
                style: AppTextStyles.titleSmaller(color: AppColors.white),
              ),
              color: AppColors.blue[10],
            )
          ],
        ),
      ),
    );
  }
}
