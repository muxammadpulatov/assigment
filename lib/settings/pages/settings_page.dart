import 'package:assigment/settings/pages/settings_page.dart';
import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/Route_n.dart';
import '../../core/commont/constants/strings/settings_strings.dart';
import '../../core/commont/widgets/app_bar.dart';
import '../../core/utils/App_reponsive.dart';
import '../widgets/settings_container_wg.dart';
import '../widgets/text_icon_row_wg.dart';

const divider = Divider(height: 1, color: AppColors.lightGrey);

TextStyle customTxtStyle({required double fontSize}) => TextStyle(
      fontSize: AppResponsive.height(fontSize),
      color: AppColors.black1,
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
    );

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppResponsive.width(0.042),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppResponsive.height(0.01),
            children: [
              Text(SettingsStrings.settingsTitle,
                  style: customTxtStyle(fontSize: 0.03)),
              // General
              SettingsContainerWg(
                heading: Text(
                  SettingsStrings.generalSection,
                  style: customTxtStyle(fontSize: 0.02),
                ),
                texts: [
                  TextIconRowWg(
                    text: SettingsStrings.language,
                    icon: Icons.keyboard_arrow_right,
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(RouteNames.settingsLanguagePage);
                    },
                  ),
                  divider,
                  TextIconRowWg(
                    text: SettingsStrings.notificationSettings,
                    icon: Icons.keyboard_arrow_right,
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(RouteNames.settingsNotificationPage);
                    },
                  ),
                  divider,
                  TextIconRowWg(
                    text: SettingsStrings.location,
                    icon: Icons.toggle_on_outlined,
                    onPressed: () {},
                  ),
                ],
              ),
              // Account & Security
              SettingsContainerWg(
                heading: Text(
                  SettingsStrings.accountSecuritySection,
                  style: customTxtStyle(fontSize: 0.02),
                ),
                texts: [
                  TextIconRowWg(
                    text: SettingsStrings.emailAndMobile,
                    icon: Icons.keyboard_arrow_right,
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(RouteNames.settingsEmailAndNumberPage);
                    },
                  ),
                  divider,
                  TextIconRowWg(
                    text: SettingsStrings.securitySettings,
                    icon: Icons.keyboard_arrow_right,
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(RouteNames.settingsSecurityPage);
                    },
                  ),
                  divider,
                  TextIconRowWg(
                    text: SettingsStrings.deleteAccount,
                    icon: Icons.keyboard_arrow_right,
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                          RouteNames.settingsSecurityDeleteAccountPage);
                    },
                  ),
                ],
              ),
              // Other
              SettingsContainerWg(
                heading: Text(
                  SettingsStrings.otherSection,
                  style: customTxtStyle(fontSize: 0.02),
                ),
                texts: [
                  TextIconRowWg(
                    text: SettingsStrings.aboutApp,
                    icon: Icons.keyboard_arrow_right,
                    onPressed: () {},
                  ),
                  divider,
                  TextIconRowWg(
                    text: SettingsStrings.privacyPolicy,
                    icon: Icons.keyboard_arrow_right,
                    onPressed: () {},
                  ),
                  divider,
                  TextIconRowWg(
                    text: SettingsStrings.termsAndConditions,
                    icon: Icons.keyboard_arrow_right,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
