import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';

Widget boxOfTextAndIconMaker(
      String textContent, Widget secondWidget, Widget? subWidget) {
    return Container(
      height: AppResponsive.height(0.065),
      width: double.infinity,
      padding:
          EdgeInsets.symmetric(horizontal: AppResponsive.screenWidth * 0.037),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppResponsive.height(0.01)),
        border: Border.all(
          color: AppColors.grey.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textContent,
                style: AppTextStyles.bodyBigger(
                  color: AppColors.black,
                ).copyWith(
                  fontSize: AppResponsive.height(0.017),
                  fontWeight: FontWeight.w600,
                ),
              ),
              subWidget ?? SizedBox.shrink()
            ],
          ),
          secondWidget,
        ],
      ),
    );
  }

