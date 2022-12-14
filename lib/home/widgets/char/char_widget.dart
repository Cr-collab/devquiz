import 'package:DevQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/app_text_styles.dart';

class CharWidget extends StatelessWidget {
  // const CharWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: .75,
                backgroundColor: AppColors.chartSecondary,
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
              ),
            ),
          ),
         Center(child: Text('75%', style: AppTextStyles.heading))
        ],

      ),
    );
  }
}
