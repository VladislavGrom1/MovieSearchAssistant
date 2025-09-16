import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:generated/generated.dart';
import 'package:movie_search_assistant/view/screens/themes/colors.dart';
import 'package:movie_search_assistant/view/screens/themes/custom_text_styles.dart';

class MovieCard extends StatelessWidget{
  MovieCard({super.key, required this.film});

  FilmSearchByFiltersResponseItems film;

  @override
  Widget build(BuildContext context){
    return Card(
      color: AppColors.primaryThemeBlack,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
                height: 140.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.w),
                  color: AppColors.primaryTextGrey,
                ),
                child: Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    SizedBox(
                      height: 140.h,
                      width: 100.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.w),
                        child: Image.network(
                          film.posterUrl.toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // TODO: Разработать логику отображения иконки "Рейтинг"
                    ratingIcon(film.ratingKinopoisk),
                  ],
                ),
              ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),
                Text(
                  film.nameRu.toString(), 
                  style: CustomTextStyles.m3TitleLarge2(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2),
                SizedBox(height: 10.h),
                Text(
                  film.nameOriginal == null || film.nameOriginal!.isEmpty ? "-" : film.nameOriginal.toString(),
                  style: CustomTextStyles.m3BodySmall(),
                ),
                SizedBox(height: 10.h),
                Text(
                  film.countries == null || film.countries!.isEmpty ? "-" : getCountriesValue(film.countries!),
                  style: CustomTextStyles.m3BodySmall(),
                ),
                SizedBox(height: 10.h),
                Text(
                  film.genres == null || film.genres!.isEmpty ? "Нет данных" : getGenresValue(film.genres!),
                  style: CustomTextStyles.m3BodySmall(),
                )
              ]
            ),
          )
        ],
      ),
    );

  }

  String getCountriesValue(BuiltList<Country> countriesBuiltList){
    String countriesValue = countriesBuiltList
      .map((country) => country.country)
      .join(', ');
    return countriesValue; 
  }

  String getGenresValue(BuiltList<Genre> genresBuiltList){
    String genresValue = genresBuiltList
      .map((country) => country.genre)
      .join(', ');
    return genresValue;
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