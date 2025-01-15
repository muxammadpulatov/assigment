import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/Route_n.dart';
import '../../core/commont/constants/strings/Auth_strings.dart';
import '../../core/commont/widgets/app_bar.dart';
import '../../core/commont/widgets/button.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';
import '../widgets/trans_details_card_wg.dart';
import '../widgets/trans_details_refund_button_wg.dart';

class TransactionDetailsPage extends StatelessWidget {
  const TransactionDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(),
      body: Padding(
          padding: EdgeInsets.only(
            left: AppResponsive.width(0.042),
            right: AppResponsive.width(0.042),
            bottom: AppResponsive.height(0.039),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: AppResponsive.height(0.019),
                children: [
                  Text(
                    AuthStrings.transactionDetails,
                    style: AppTextStyles.bigTextSmaller(color: AppColors.black),
                  ),
                  TransDetailsCardWg(),
                  _myRow(
                      textL: "Status", textR: "Status", colorR: AppColors.blue),
                  _myRow(
                      textL: AuthStrings.invoice,
                      textR: "INV434623623",
                      colorR: AppColors.black),
                  _myRow(
                      textL: AuthStrings.transactionDate,
                      textR: "Wed, 18 Oct 2022",
                      colorR: AppColors.black),
                  _myRow(
                      textL: AuthStrings.paymentMethod,
                      textR: "Paytren",
                      colorR: AppColors.black),
                  Container(
                    width: double.infinity,
                    height: AppResponsive.height(0.097),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppResponsive.width(0.042),
                      vertical: AppResponsive.height(0.017),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.lightGrey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      spacing: AppResponsive.height(0.017),
                      children: [
                        _myRow(
                            textL: "Iftikhor Rustamov",
                            textR: "Rp. 210.000",
                            colorR: AppColors.grey),
                        _myRow(
                            textL: "Total",
                            textR: "Rp. 210.000",
                            colorR: AppColors.black),
                      ],
                    ),
                  ),
                  TransDetailsRefundButtonWg(),
                ],
              ),
              Button(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context,
                      RouteNames.mainPage,
                      (route) => route.settings.name == RouteNames.mainPage);
                },
                childWg: Text(
                  AuthStrings.enter,
                  style: AppTextStyles.titleSmaller(color: AppColors.white),
                ),
                color: AppColors.blue,
              ),
            ],
          )),
    );
  }
}

Widget _myRow(
        {required String textL,
        required String textR,
        required Color colorR}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textL,
          style: AppTextStyles.bodySmallerMedium(color: AppColors.grey),
        ),
        Text(
          textR,
          style: AppTextStyles.bodySmallerMedium(color: colorR),
        ),
      ],
    );
