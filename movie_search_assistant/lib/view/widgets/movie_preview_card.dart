import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:generated/generated.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

class MoviePreviewCard extends StatelessWidget {
  MoviePreviewCard({super.key, required this.film});

  FilmCollectionResponseItems? film;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140.h,
          width: 90.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.w),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.w),
                child: film == null 
                ? Container(color: AppColors.primaryTextGrey)
                : SizedBox.expand(
                  child: CachedNetworkImage(
                    imageUrl: film!.posterUrl.toString(),
                    errorWidget: (context, error, stackTrace) {
                      return Container(
                        color: AppColors.secondaryThemeGrey,
                        child: Icon(Icons.error, color: AppColors.primaryTextGrey),
                      );
                    },
                    filterQuality: FilterQuality.medium,
                    fit: BoxFit.contain,
                  ),
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
              film == null 
              ? Positioned(
                bottom: 8.h,
                right: 8.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.ratingGrey,
                    borderRadius: BorderRadius.circular(5.0.h),
                  ),
                  width: 22.w,
                  height: 20.h,
                  child: Center(
                    child: Text("",
                        style: CustomTextStyles.m3LabelSmall(color: Colors.white)),
                  ),
                ),
              )
              : ratingIcon(film!.ratingKinopoisk),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        film == null 
        ? SizedBox(
          width: 96.w,
          child: Container(
            color: AppColors.primaryTextGrey,
          ),
        )
        : SizedBox(
          width: 96.w,
          child: Text(
              overflow: TextOverflow.ellipsis,
              film!.nameRu == null || film!.nameRu!.isEmpty ? film!.nameOriginal.toString() : film!.nameRu.toString(),
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
