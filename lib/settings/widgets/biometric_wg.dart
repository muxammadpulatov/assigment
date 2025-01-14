import 'package:assigment/settings/pages/settings_page.dart';
import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/strings/settings_strings.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';
import '../widgets/text_icon_row_wg.dart';

class BiometricWg extends StatelessWidget {
  const BiometricWg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsive.width(0.042),
        vertical: AppResponsive.height(0.03),
      ),
      color: AppColors.white,
      width: double.infinity,
      height: AppResponsive.height(0.22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppResponsive.height(0.019),
        children: [
          Text(
            SettingsStrings.biometricOption,
            style: customTxtStyle(fontSize: 0.02),
          ),
          SizedBox(
            child: Column(
              children: [
                TextIconRowWg(
                    text: SettingsStrings.activateBiometricFeature,
                    onPressed: () {},
                    icon: Icons.toggle_on_rounded),
                Text(
                  SettingsStrings.biometricOptionDescription,
                  style: AppTextStyles.bodyBigger(color: AppColors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
