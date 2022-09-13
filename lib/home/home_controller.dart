import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:flutter/cupertino.dart';

import '../shared/models/awnser_model.dart';
import '../shared/models/question_model.dart';
import '../shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get  state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: 'gavuldev',
      photoUrl: 'https://avatars.githubusercontent.com/u/65018066?v=4',
    );
    state = HomeState.sucesss;

  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
        title: 'NLW 5 flutter',
        imagem: AppImages.blocks,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: 'Está curtindo o flutter?',
            awnswers: [
              AwnserModel(title: 'Estou curtindo o flutter', isRight: true),
              AwnserModel(
                  title: 'Não estou curtindo o flutter', isRight: false),
              AwnserModel(
                  title: 'Mais o Menos curtindo o flutter', isRight: false),
              AwnserModel(
                  title: 'Ta dificil curtindo o flutter', isRight: false),
              AwnserModel(
                  title: 'Ta dificil curtindo o flutter', isRight: false),
            ],
          ),
        ],
      )
    ];

    state = HomeState.sucesss;
  }
}
