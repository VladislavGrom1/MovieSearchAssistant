import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:generated/generated.dart';
import 'package:movie_search_assistant/view/screens/themes/colors.dart';
import 'package:movie_search_assistant/view/screens/themes/custom_text_styles.dart';

class MoviePreviewCard extends StatelessWidget {
  MoviePreviewCard({super.key, required this.film});

  FilmCollectionResponseItems film;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.w),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.w),
                child: Image.network(
                  film.posterUrl.toString(),
                  fit: BoxFit.contain,
                ),
              ),
              // TODO: Разработать логику отображения иконки "Закладка"
              // Positioned(
              //   top: 4.h,
              //   left: 4.w,
              //     child: Container(
              //       height: 20.h,
              //       width: 20.w,
              //       color: AppColors.primaryThemeBlack,
              //       child: Icon(
              //           Icons.bookmark,
              //           color: Color(0xFFff9500),
              //           size: 18.w,
              //         ),
              //     ),
              // ),
              // TODO: Разработать логику отображения иконки "Рейтинг"
              ratingIcon(film.ratingKinopoisk),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          width: 96.w,
          child: Text(
              overflow: TextOverflow.ellipsis,
              film.nameRu.toString(),
              maxLines: 3,
              style: CustomTextStyles.m3LabelLarge()),
        ),
      ],
    );
  }

  Widget ratingIcon(num? ratingKinopoisk) {
    Color backgroundColor;
    String rating;

    if (ratingKinopoisk == null) {
      backgroundColor = AppColors.ratingGrey;
      rating = "-";
    } else {
      if (ratingKinopoisk >= 7 && ratingKinopoisk <= 10) {
        backgroundColor = AppColors.ratingGreen;
      }
      else if (ratingKinopoisk >= 6 && ratingKinopoisk < 7) {
        backgroundColor = AppColors.ratingOrange;
      }
      else if (ratingKinopoisk >= 5 && ratingKinopoisk < 6) {
        backgroundColor = AppColors.ratingGrey;
      }
      else if (ratingKinopoisk >= 0 && ratingKinopoisk < 5) {
        backgroundColor = AppColors.ratingRed;
      } else {
        backgroundColor = AppColors.ratingGrey;
      }
      rating = ratingKinopoisk.toString();
    }

    return Positioned(
      bottom: 8.h,
      right: 8.w,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5.0.h),
        ),
        width: 22.w,
        height: 20.h,
        child: Center(
          child: Text(rating,
              style: CustomTextStyles.m3LabelSmall(color: Colors.white)),
        ),
      ),
    );
  }
}
