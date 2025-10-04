import 'dart:developer';
import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/film_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/widgets/custom_error_widget.dart';

class FilmScreen extends GetView<FilmController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {

          if(controller.isErrorConnection.value){
            return Column(
              children: [
                AppBar(
                  backgroundColor: AppColors.primaryThemeBlack,
                  leading: IconButton(onPressed: () {
                    Get.toNamed(Routes.searchHomeScreen, id: NavigatorIds.searchHome);
                  }, icon: Icon(Icons.arrow_back, color: AppColors.primaryTextWhite)),
                ),
                Expanded(child: CustomErrorWidget(statusCode: controller.statusCode.value)),
              ],
            );
          }

          if(controller.isLoading.value){
            return Center(child: CircularProgressIndicator());
          } else{
            return CustomScrollView(
                slivers: [
                  SliverAppBar(
                      backgroundColor: AppColors.primaryThemeBlack,
                      surfaceTintColor: Colors.transparent,
                      pinned: true,
                      floating: false,
                      expandedHeight: 500.h,
                      elevation: 0,
                      iconTheme: IconThemeData(color: Colors.white),
                      flexibleSpace: backgroundAppBarWidget()),
                  SliverList.list(
                    children: [
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  controller.film.value?.nameRu == null
                                      ? controller.film.value?.nameOriginal == null ? "Название отсутствует" : controller.film.value!.nameOriginal.toString()
                                      : controller.film.value!.nameRu.toString(),
                                  style: CustomTextStyles.m3HeadlineMedium()
                                      .copyWith(height: 1),
                                  textAlign: TextAlign.center),
                              SizedBox(height: 10.h),
                              mainFilmInformation(),
                              SizedBox(height: 10.h),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    customIconButton(
                                        "Буду смотреть",
                                        Icon(Icons.bookmark_add_outlined,
                                            size: 30.w)),
                                    customIconButton("Подробнее",
                                        Icon(Icons.public, size: 30.w)),
                                    customIconButton(
                                        "В коллекцию",
                                        Icon(Icons.my_library_add_outlined,
                                            size: 30.w)),
                                  ]),
                              SizedBox(height: 40.h),
                              filmDescription(),
                              SizedBox(height: 20.h),
                              filmSlogan(),
                              SizedBox(height: 20.h),
                              filmRatingAndReviewCount(
                                  "assets/icons/kp.jpg",
                                  "Рейтинг KP",
                                  controller.film.value?.ratingKinopoisk,
                                  controller
                                      .film.value?.ratingKinopoiskVoteCount),
                              SizedBox(height: 10.h),
                              filmRatingAndReviewCount(
                                  "assets/icons/imdb.png",
                                  "Рейтинг IMDB",
                                  controller.film.value?.ratingImdb,
                                  controller.film.value?.ratingImdbVoteCount),
                              SizedBox(height: 20.h),
                              if (controller.imagesFilm.value!.items.isNotEmpty)
                                filmImages()
                            ]),
                      ),
                    ],
                  ),
                ],
              );
          }

      })
    );
  }

  Widget backgroundAppBarWidget() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double currentHeight = constraints.biggest.height;
        final double minAppBarHeight =
            kToolbarHeight + MediaQuery.of(context).padding.top;
        final bool isCollapsed = currentHeight <= minAppBarHeight + 5;

        return Stack(
          fit: StackFit.expand,
          children: [
            FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: CachedNetworkImage(
                imageUrl: controller.film.value?.posterUrl ?? "",
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    Container(color: AppColors.primaryTextGrey),
                errorWidget: (context, error, stackTrace) {
                  return Container(
                    color: AppColors.secondaryThemeGrey,
                    child: Icon(Icons.error, color: AppColors.primaryTextGrey),
                  );
                },
              ),
            ),
            if (isCollapsed)
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: AppColors.primaryThemeBlack,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                  child: Padding(
                    padding: EdgeInsets.only(left: 60.w, right: 60.w),
                    child: Text(
                      controller.film.value?.nameRu ?? '',
                      style: TextStyle(
                        color: AppColors.primaryTextGrey,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget mainFilmInformation() {
    return Card(
      color: AppColors.secondaryThemeGrey,
      child: Padding(
          padding: EdgeInsets.all(12.h),
          child: Column(
            children: [
              if (controller.film.value?.nameOriginal != null) ...[
                Text(controller.film.value?.nameOriginal ?? "-",
                    style: CustomTextStyles.m3BodyMedium(
                            color: AppColors.primaryTextWhite)
                        .copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center),
                SizedBox(height: 10.h),
              ],
              controller.film.value?.serial == true
                  ? Text(
                      "${controller.film.value?.startYear} - ${controller.film.value?.endYear ?? "настоящее время"}",
                      style: CustomTextStyles.m3BodyMedium(),
                      textAlign: TextAlign.center)
                  : Text("${controller.film.value?.year}",
                      style: CustomTextStyles.m3BodyMedium(),
                      textAlign: TextAlign.center),
              SizedBox(height: 10.h),
              Text(getGenresValue(controller.film.value?.genres),
                  style: CustomTextStyles.m3BodyMedium(),
                  textAlign: TextAlign.center),
              SizedBox(height: 10.h),
              Text(getCountriesValue(controller.film.value?.countries),
                  style: CustomTextStyles.m3BodyMedium(),
                  textAlign: TextAlign.center),
            ],
          )),
    );
  }

  Widget customIconButton(String label, Icon icon) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.primaryThemeBlack),
        ),
        onPressed: () {},
        child: Column(
          children: [
            icon,
            SizedBox(height: 10.h),
            Text(label,
                style: CustomTextStyles.m3LabelMedium(
                    color: AppColors.primaryScheme),
                textAlign: TextAlign.center)
          ],
        ));
  }

  Widget filmDescription() {
    return Card(
      color: AppColors.secondaryThemeGrey,
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Text(
            controller.film.value?.description ?? "Описание отсутствует",
            style: CustomTextStyles.m3BodyLarge()
                .copyWith(fontWeight: FontWeight.w800, height: 1.3),
            textAlign: TextAlign.left),
      ),
    );
  }

  Widget filmSlogan() {
    return Card(
      color: AppColors.secondaryThemeGrey,
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Text(
            controller.film.value?.slogan == null
                ? "Слоган отсутствует"
                : "\"${controller.film.value?.slogan}\"",
            style: CustomTextStyles.m3BodyMedium().copyWith(
              fontStyle: FontStyle.italic,
              height: 1,
            )),
      ),
    );
  }

  Widget filmRatingAndReviewCount(
    String imagePath,
    String resourseName,
    num? rating,
    int? voteCount,
  ) {
    return Card(
      color: AppColors.secondaryThemeGrey,
      child: SizedBox(
        height: 90.h,
        width: 365.w,
        child: Row(
          children: [
            Stack(alignment: Alignment.center, children: [
              Container(
                height: 90.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: AppColors.secondaryThemeGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    bottomLeft: Radius.circular(12.r),
                  ),
                  image: DecorationImage(
                      opacity: 0.15,
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover),
                ),
              ),
              Text(rating == null ? "-" : rating.toString(),
                  style: CustomTextStyles.m3HeadlineMedium()
                      .copyWith(fontSize: 40, fontWeight: FontWeight.w800))
            ]),
            SizedBox(
              height: 90.h,
              width: 275.w,
              child: Padding(
                padding: EdgeInsetsGeometry.only(left: 12.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(resourseName, style: CustomTextStyles.m3TitleLarge()),
                    SizedBox(height: 8.h),
                    Text(
                        "${voteCount == null ? 0 : voteCount.toString()} оценок",
                        style: CustomTextStyles.m3TitleLarge()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget filmImages() {
    return Column(
      children: [
        Row(
          children: [
            Text("Кадры из фильма", style: CustomTextStyles.m3TitleLarge()),
          ],
        ),
        SizedBox(height: 20.h),
        Obx(() => SizedBox(
            height: 200.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: controller.imagesFilm.value?.items == null
                    ? 0
                    : controller.imagesFilm.value!.items.length,
                separatorBuilder: (context, index) => SizedBox(width: 12.w),
                itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200.h,
                          width: 320.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.w),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.w),
                                child: controller.imagesFilm.value == null
                                    ? Container(
                                        color: AppColors.primaryTextGrey)
                                    : SizedBox.expand(
                                        child: CachedNetworkImage(
                                          imageUrl: controller.imagesFilm.value!
                                              .items[index].imageUrl!,
                                          errorWidget:
                                              (context, error, stackTrace) {
                                            return Container(
                                              color:
                                                  AppColors.secondaryThemeGrey,
                                              child: Icon(Icons.error,
                                                  color: AppColors
                                                      .primaryTextGrey),
                                            );
                                          },
                                          filterQuality: FilterQuality.medium,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )))),
        SizedBox(height: 20.h)
      ],
    );
  }

  String getGenresValue(BuiltList<Genre>? genresBuiltList) {

    if(genresBuiltList == null){
      return "Данные отсутствуют";
    }

    String genresValue =
        genresBuiltList.map((country) => country.genre).join(', ');
    return genresValue;
  }

  String getCountriesValue(BuiltList<Country>? countriesBuiltList) {

    if(countriesBuiltList == null){
      return "Данные отсутствуют";
    }

    String countriesValue =
        countriesBuiltList.map((country) => country.country).join(', ');
    return countriesValue;
  }
}
