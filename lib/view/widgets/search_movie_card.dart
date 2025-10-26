import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:generated/generated.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

class SearchMovieCard extends StatelessWidget{
  const SearchMovieCard({
    super.key,
    this.nameRu,
    this.nameOriginal,
    this.posterUrl,
    this.ratingKinopoisk,
    this.countries,
    this.genres,
    this.year
  });

  final String? nameRu;
  final String? nameOriginal;
  final String? posterUrl;
  final num? ratingKinopoisk;
  final BuiltList<Country>? countries;
  final BuiltList<Genre>? genres;
  final num? year;


  factory SearchMovieCard.fromFilters(FilmSearchByFiltersResponseItems? film){
    if(film == null) return SearchMovieCard();
    return SearchMovieCard(
      nameRu: film.nameRu,
      nameOriginal: film.nameOriginal,
      posterUrl: film.posterUrl,
      ratingKinopoisk: film.ratingKinopoisk,
      countries: film.countries,
      genres: film.genres,
      year: film.year,
    );
  }

  factory SearchMovieCard.fromCategory(FilmCollectionResponseItems? film){
    if(film == null) return SearchMovieCard();
    return SearchMovieCard(
      nameRu: film.nameRu,
      nameOriginal: film.nameOriginal,
      posterUrl: film.posterUrl,
      ratingKinopoisk: film.ratingKinopoisk,
      countries: film.countries,
      genres: film.genres,
      year: film.year,
    );
  }

  factory SearchMovieCard.fromStorage(FilmCard? film){
    if(film == null) return SearchMovieCard();

    BuiltList<Genre>? genresBuiltList;
    if (film.genres != null) {
      genresBuiltList = BuiltList.from(
        film.genres!.map((genreName) => Genre((b) => b..genre = genreName)),
      );
    }

    BuiltList<Country>? countriesBuiltList;
    if (film.countries != null) {
      countriesBuiltList = BuiltList.from(
        film.countries!.map((countryName) => $Country((b) => b..country = countryName)),
      );
    }

    return SearchMovieCard(
      nameRu: film.nameRu,
      nameOriginal: film.nameOriginal,
      posterUrl: film.posterUrl,
      ratingKinopoisk: film.ratingKinopoisk,
      countries: countriesBuiltList,
      genres: genresBuiltList,
      year: film.year,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryThemeBlack,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
                height: 140.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.w),
                  color: AppColors.primaryTextGrey,
                ),
                child: Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(16.w),
                        child: SizedBox.expand(
                          child: 
                          posterUrl == null
                          ? Container(color: AppColors.secondaryThemeGrey)
                          : CachedNetworkImage(
                            imageUrl: posterUrl.toString(),
                            errorWidget: (context, error, stackTrace) {
                            return Container(
                                color: AppColors.secondaryThemeGrey,
                                child: Icon(Icons.error, color: AppColors.primaryTextGrey),
                              );
                            },
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.medium,
                          ),
                        ),
                      ),
                    // TODO: Разработать логику отображения иконки "Рейтинг"
                    ratingIcon(ratingKinopoisk),
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
                nameRu == null
                ? Container(color: AppColors.secondaryThemeGrey)
                : Text(
                  nameRu!.isEmpty ? nameOriginal.toString() : nameRu.toString(), 
                  style: CustomTextStyles.m3TitleLarge2(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2),
                SizedBox(height: 10.h),
                nameOriginal == null
                ? Container(color: AppColors.secondaryThemeGrey)
                : Text(
                  nameOriginal!.isEmpty ? "-" : nameOriginal.toString(),
                  style: CustomTextStyles.m3BodySmall(),
                ),
                SizedBox(height: 10.h),
                countries == null
                ? Container(color: AppColors.secondaryThemeGrey)
                : Text(
                  countries!.isEmpty ? "-$year" : "${getCountriesValue(countries!)}, $year",
                  style: CustomTextStyles.m3BodySmall(),
                ),
                SizedBox(height: 10.h),
                genres == null
                ? Container(color: AppColors.secondaryThemeGrey)
                : Text(
                  genres!.isEmpty ? "Нет данных" : getGenresValue(genres!),
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