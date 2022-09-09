import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../core/app_gradients.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradients.linear,
      ),
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(text: 'Olá, ', style: AppTextStyles.title, children: [
                TextSpan(text: 'Cristiano', style: AppTextStyles.titleBold)
              ]),
            ),
            Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://avatars.githubusercontent.com/u/65018066?v=4'),
                  )),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(250);
  // const AppBar({super.key});
}
