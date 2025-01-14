import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';

Widget baggageMassaCard(
    Color color,
    Color borderColor,
    String text1,
    String text2,
  ) {
    return Expanded(
      child: Container(
        height: AppResponsive.height(0.09),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            AppResponsive.width(0.03),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: AppTextStyles.bigTextSmaller(
                color:
                    color == AppColors.blue ? AppColors.white : AppColors.black,
              ).copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text2,
              style: AppTextStyles.bodyBigger(
                color: color == AppColors.blue
                    ? AppColors.white
                    : AppColors.grey.withValues(alpha: 0.7),
              ).copyWith(
                fontWeight: FontWeight.w600,
                fontSize: AppResponsive.width(0.03),
              ),
            ),
          ],
        ),
      ),
    );
  }