import 'package:flutter/material.dart';
import '../../core/commont/constants/AppColors.dart';
import '../../core/utils/App_reponsive.dart';

class OrdinaryContainerWg extends StatelessWidget {
  final String path;

  const OrdinaryContainerWg({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: AppResponsive.height(0.08),
        color: AppColors.lightGrey,
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            path,
            height: AppResponsive.height(0.04),
            width: AppResponsive.width(0.085),
          ),
        ),
      ),
    );
  }
}
