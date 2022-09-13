import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../core/app_gradients.dart';
import '../../../shared/models/user_model.dart';
import '../score_card/score_card_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
   final UserModel user;

  const AppBarWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
            height: 161,
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                      text: 'Olá, ',
                      style: AppTextStyles.title,
                      children: [
                        TextSpan(
                            text: this.user.name, style: AppTextStyles.titleBold)
                      ]),
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            this.user.photoUrl),
                      )),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.2),
            child: ScoreCardWidget(),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(250);
  // const AppBar({super.key});
}
