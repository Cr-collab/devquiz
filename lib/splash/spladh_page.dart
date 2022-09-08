import 'package:DevQuiz/core/app_gradients.dart';
import 'package:flutter/material.dart';

class SplahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear
        ) ,
      ),
    );
  }
}