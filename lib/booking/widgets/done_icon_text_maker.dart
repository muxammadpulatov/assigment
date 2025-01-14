import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/commont/constants/Icons_p.dart';
import '../../core/utils/App_reponsive.dart';
import '../../core/utils/app_text_styles.dart';

Row doneIconWithTextMaker(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          IconsPaths.done,
          color: AppColors.green,
          size: AppResponsive.height(0.025),
        ),
        SizedBox(
          width: AppResponsive.width(0.015),
        ),
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.bodyBigger(
              color: AppColors.grey.withValues(alpha: 0.7),
            ).copyWith(
              fontSize: AppResponsive.height(0.016),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
