import 'package:DevQuiz/challenge/widgets/awnser/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
            title:
                'Possibilitar a criação de aplicativos compilados nativamente',
            isRight: false,
            isSelected: true,
          ),
          AnswerWidget(
              title:
                  'Possibilitar a criação de aplicativos compilados nativamente'),
          AnswerWidget(
              title:
                  'Possibilitar a criação de aplicativos compilados nativamente'),
          AnswerWidget(
              title:
                  'Possibilitar a criação de aplicativos compilados nativamente'),
        ],
      ),
    );
  }
}
