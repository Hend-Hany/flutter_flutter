import 'package:flutter/material.dart';
import 'package:flutter_flutter/shared/weidget/app_text.dart';

import '../../shared/weidget/app_aapbar.dart';

class QuizView extends StatelessWidget {
  const QuizView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  AppAppBar(
        title: "Quiz",
      ),
      body: Column(
        children: [
          AppText(
            title: 'Question 5/15',
            fontSize: 18,
            color: AppColors.yellow,
            fontWeight: FontWeight.w900,
          ),
          SizedBox(
            height: 8,
          ),
          AppText(
            title: 'Question 5/15',
            fontSize: 18,
            color: AppColors.yellow,
            fontWeight: FontWeight.w900,
          ),
        ],
      ),
    );
  }
}
