import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  CustomErrorWidget({
    super.key,
    this.statusCode,
  });

  int? statusCode;

  @override
  Widget build(BuildContext context) {
    Map<String, String> message = switchErrorMessage(statusCode);
    return ListView(
      children: [
        Image.asset(
          "assets/icons/errorIcon.png",
          fit: BoxFit.cover,
        ),
        Text(message['title']!, style: CustomTextStyles.m3HeadlineMedium(), textAlign: TextAlign.center),
        SizedBox(height: 20.h),
        Text(message['description']!, style: CustomTextStyles.m3TitleMedium(), textAlign: TextAlign.center),
      ],
    );
  }

  Map<String, String> switchErrorMessage(int? statusCode) {
    Map<String, String> message = {
      "title": "Произошла ошибка",
      "description": "Неизвестная ошибка"
    };
    switch (statusCode) {
      case (401):
        message["description"] = "Ваш API Token некорректный. Проверьте корректность введённого API Token на вкладке Профиль";
        return message;
      case (402):
        message["description"] = "Превышен лимит запросов к серверу. Пожалуйста, попробуйте позже или измените API Token на вкладке Профиль";
        return message;
      default:
        return message;
    }
  }
}
