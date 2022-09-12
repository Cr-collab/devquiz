import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:flutter/cupertino.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awnswers;

  QuestionModel({required this.title, required this.awnswers})
      : assert(awnswers.length > 4);
}
