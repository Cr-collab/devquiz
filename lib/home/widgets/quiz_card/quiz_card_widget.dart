import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

import '../../../shared/models/question_model.dart';
import '../../../shared/models/quiz_model.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final int questions;
  final int questionAnswered;
  final String imagem;
  const QuizCardWidget(
      {super.key,
      required this.title,
      required this.questions,
      required this.questionAnswered,
      required this.imagem,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.border),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              child: Image.asset(this.imagem),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              this.title,
              style: AppTextStyles.heading15,
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    '${this.questionAnswered} de ${this.questions}',
                    style: AppTextStyles.body11,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ProgressIndicatorWidget(
                    value: this.questionAnswered / this.questions,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
