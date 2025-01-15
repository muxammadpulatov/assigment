import 'package:assigment/settings/pages/settings_page.dart';
import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/strings/settings_strings.dart';
import '../../core/commont/widgets/app_bar.dart';
import '../../core/utils/App_reponsive.dart';
import '../widgets/biometric_wg.dart';
import '../widgets/credit_card_wg.dart';
import '../widgets/security_device_wg.dart';
import '../widgets/security_pin_wg.dart';

class SettingsSecurityPage extends StatelessWidget {
  const SettingsSecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppResponsive.height(0.019),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppResponsive.width(0.042),
                vertical: AppResponsive.height(0.005),
              ),
              child: Text(SettingsStrings.securitySettings,
                  style: customTxtStyle(fontSize: 0.03)),
            ),
            // Credit Card
            CreditCardWg(),
            //Biometric
            BiometricWg(),
            // Device
            SecurityDeviceWg(),
            // Pin
            SecurityPinWg(),
          ],
        ),
      ),
    );
  }
}
