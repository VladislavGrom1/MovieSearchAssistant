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
import 'package:movie_search_assistant/constants/watch_statuses.dart';
import 'package:movie_search_assistant/controllers/film_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/widgets/custom_error_widget.dart';
import 'package:movie_search_assistant/view/widgets/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class FilmScreen extends StatelessWidget {
  final int idFilm;
  final int navId;

  const FilmScreen({super.key, required this.idFilm, required this.navId});

  @override
  Widget build(BuildContext context) {
    final tag = '${navId}_$idFilm';
    final controller = Get.find<FilmController>(tag: tag);

    return Scaffold(
      body: RefreshIndicator(
          backgroundColor: AppColors.secondaryThemeGrey,
          color: AppColors.primaryTextWhite,
          onRefresh: () async {
            await controller.resetAndReload();
          },
          child: Obx(() {
          if (!controller.globalNetworkController.isConnectedToInternet.value && controller.filmCard.value == null){
            return Column(
              children: [
                AppBar(
                  backgroundColor: AppColors.primaryThemeBlack,
                  leading: IconButton(
                      onPressed: () {
                        Get.back(id: controller.navId);
                      },
                      icon: Icon(Icons.arrow_back,
                          color: AppColors.primaryTextWhite)),
                ),
                Expanded(
                    child: CustomErrorWidget(statusCode: 0)),
              ],
            );
          }
          
          if (controller.isErrorConnection.value) {
            return Column(
              children: [
                AppBar(
                  backgroundColor: AppColors.primaryThemeBlack,
                  leading: IconButton(
                      onPressed: () {
                        Get.back(id: controller.navId);
                      },
                      icon: Icon(Icons.arrow_back,
                          color: AppColors.primaryTextWhite)),
                ),
                Expanded(
                    child: CustomErrorWidget(statusCode: controller.statusCode.value)),
              ],
            );
          }
          
          if (controller.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          } else {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                    leading: IconButton(
                      onPressed: () {
                        final status = controller.selectedRadioValue.value;
                        final filmId = controller.film.value?.kinopoiskId;
          
                        if (status == WatchStatuses.DONT_WATCH && filmId != null) {
                          Get.back(result: filmId, id: controller.navId);
                        } else {
                          Get.back(id: controller.navId);
                        }
          
                      },
                      icon: Icon(Icons.arrow_back, color: AppColors.primaryTextWhite),
                    ),
                    backgroundColor: AppColors.primaryThemeBlack,
                    surfaceTintColor: Colors.transparent,
                    pinned: true,
                    floating: false,
                    expandedHeight: 500.h,
                    elevation: 0,
                    iconTheme: IconThemeData(color: Colors.white),
                    flexibleSpace: backgroundAppBarWidget(controller)),
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
                                    ? controller.film.value?.nameOriginal == null
                                        ? "Название отсутствует"
                                        : controller.film.value!.nameOriginal
                                            .toString()
                                    : controller.film.value!.nameRu.toString(),
                                style: CustomTextStyles.m3HeadlineMedium()
                                    .copyWith(height: 1),
                                textAlign: TextAlign.center),
                            SizedBox(height: 10.h),
                            mainFilmInformation(controller),
                            SizedBox(height: 10.h),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(
                                    label: Text(controller.selectedRadioValue.value,
                                        style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryScheme).copyWith(fontWeight: FontWeight.w800, height: 1.3)),
                                    iconAlignment: IconAlignment.end,
                                    icon: Icon(Icons.arrow_drop_down, color: AppColors.primaryScheme),
                                    style: ButtonStyle(
                                        shape: WidgetStatePropertyAll<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5),
                                                side: BorderSide(color: AppColors.primaryScheme, width: 2))),
                                        backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
                                    onPressed: () async {
                                      await Get.dialog(
                                        Obx(() => AlertDialog(
                                        backgroundColor:AppColors.secondaryThemeGrey,
                                        title: Text("Выберите статус просмотра", style: CustomTextStyles.m3HeadlineMedium(color: AppColors.primaryTextGrey).copyWith(height: 1.3)),
                                        content: SizedBox(
                                          height: 280.h,
                                          child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                RadioGroup<String>(
                                                    groupValue: controller.selectedRadioValue.value,
                                                    onChanged: (value) async {
                                                      controller.updateSelectionRadioValue(value);
                                                      Get.back();
                                                      if(value == WatchStatuses.DONT_WATCH){
                                                        await controller.removeFilmFromCategory();
                                                      }
                                                      else{
                                                        await controller.saveFilmInCollection();
                                                      }
                                                    },
                                                    child: Column(
                                                      children: [
                                                        ListTile(
                                                          leading: Radio<String>(
                                                            fillColor:WidgetStatePropertyAll(AppColors.primaryTextGrey),
                                                            value: WatchStatuses.DONT_WATCH,
                                                          ),
                                                          title: Text(WatchStatuses.DONT_WATCH, style: CustomTextStyles.m3TitleMedium().copyWith(fontWeight: FontWeight.w800)),
                                                        ),
                                                        ListTile(
                                                          leading: Radio<String>(
                                                            fillColor: WidgetStatePropertyAll(AppColors.primaryTextGrey),
                                                            value: WatchStatuses.WILL_WATCH,
                                                          ),
                                                          title: Text(WatchStatuses.WILL_WATCH, style: CustomTextStyles.m3TitleMedium().copyWith(fontWeight: FontWeight.w800)),
                                                        ),
                                                        ListTile(
                                                          leading: Radio<String>(
                                                            fillColor: WidgetStatePropertyAll(AppColors.primaryTextGrey),
                                                            value: WatchStatuses.WATCHED,
                                                          ),
                                                          title: Text(WatchStatuses.WATCHED, style: CustomTextStyles.m3TitleMedium().copyWith(fontWeight:FontWeight.w800)),
                                                        ),
                                                      ],
                                                    )),
                                                SizedBox(height: 20.h),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                      minimumSize: WidgetStatePropertyAll(Size(double.infinity, 40.h)),
                                                      alignment: AlignmentGeometry.center,
                                                      backgroundColor: WidgetStatePropertyAll(AppColors.primaryScheme)),
                                                  onPressed: () async {
                                                    Get.back();
                                                  },
                                                  child: Text("Отмена",
                                                      style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextWhite).copyWith(fontWeight:FontWeight.w800)),
                                                ),
                                              ]
                                              ),
                                          ),
                                        )
                                        )
                                      );
                                    },
                                  ),
                                  SizedBox(width: 20.w),
                                  ElevatedButton.icon(
                                      label: Text("Подробнее",
                                          style: CustomTextStyles.m3BodyLarge(
                                                  color: AppColors.primaryScheme)
                                              .copyWith(
                                                  fontWeight: FontWeight.w800,
                                                  height: 1.3)),
                                      iconAlignment: IconAlignment.end,
                                      icon: Icon(Icons.public,
                                          color: AppColors.primaryScheme),
                                      style: ButtonStyle(
                                          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  side: BorderSide(
                                                      color:
                                                          AppColors.primaryScheme,
                                                      width: 2))),
                                          backgroundColor:
                                              WidgetStatePropertyAll(Colors.transparent)),
                                      onPressed: () {
                                        bool urlIsOpened =
                                            controller.launchFilmWebURL();
                                        if (!urlIsOpened) {
                                          CustomSnackBar.showError(title: "Ошибка", message: "Не удалось перейти по ссылке");
                                          return;
                                        }
                                      }),
                                ]),
                            SizedBox(height: 20.h),
                            filmDescription(controller),
                            SizedBox(height: 20.h),
                            filmSlogan(controller),
                            SizedBox(height: 20.h),
                            filmRatingAndReviewCount(
                                "assets/icons/kp.jpg",
                                "Рейтинг KP",
                                controller.film.value?.ratingKinopoisk,
                                controller.film.value?.ratingKinopoiskVoteCount),
                            SizedBox(height: 10.h),
                            filmRatingAndReviewCount(
                                "assets/icons/imdb.png",
                                "Рейтинг IMDB",
                                controller.film.value?.ratingImdb,
                                controller.film.value?.ratingImdbVoteCount),
                            SizedBox(height: 20.h),
                            // TODO: При этом условии выводятся пустые контейнеры, т.к. imagesFilm.value.items.isEmpty
                            controller.imagesFilm.value?.items == null && controller.filmCard.value?.imagesFilmBytes == null
                            ? Center(child: Text("Не удалось загрузить изображения", style: CustomTextStyles.m3BodyLarge()
                    .copyWith(fontWeight: FontWeight.w800, height: 1.3)))
                            : filmImages(controller)
                          ]),
                    ),
                  ],
                ),
              ],
            );
          }
              }),
        ),
      );
  }

  Widget backgroundAppBarWidget(FilmController controller) {
    Widget backgroundWidget;

    if (controller.filmCard.value?.posterBytes != null) {
      backgroundWidget = Image.memory(
        controller.filmCard.value!.posterBytes!,
        fit: BoxFit.cover,
        );
    } else if (controller.film.value?.posterUrl != null) {
      backgroundWidget = CachedNetworkImage(
        imageUrl: controller.film.value?.posterUrl ?? "",
        fit: BoxFit.cover,
        placeholder: (content, url) => Container(color: AppColors.primaryTextGrey),
        errorWidget: (context, error, stackTrace) {
          return Container(
            color: AppColors.secondaryThemeGrey,
            child: Icon(Icons.error, color: AppColors.primaryTextGrey),
          );
        },
        );
    } else {
      backgroundWidget = Container(color: AppColors.primaryTextGrey);
    }

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
              background: backgroundWidget
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

  Widget mainFilmInformation(FilmController controller) {
    return Card(
      color: AppColors.secondaryThemeGrey,
      child: Padding(
          padding: EdgeInsets.all(12.h),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (controller.film.value?.nameOriginal != null) ...[
                        Text(controller.film.value?.nameOriginal ?? "-",
                            style: CustomTextStyles.m3BodyLarge(
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
                              style: CustomTextStyles.m3BodyLarge().copyWith(
                                  fontWeight: FontWeight.w800, height: 1.3),
                              textAlign: TextAlign.center)
                          : Text("${controller.film.value?.year}",
                              style: CustomTextStyles.m3BodyLarge().copyWith(
                                  fontWeight: FontWeight.w800, height: 1.3),
                              textAlign: TextAlign.center),
                      SizedBox(height: 10.h),
                      Text(getGenresValue(controller.film.value?.genres),
                          style: CustomTextStyles.m3BodyLarge().copyWith(
                              fontWeight: FontWeight.w800, height: 1.3),
                          maxLines: 3,
                          textAlign: TextAlign.start),
                      SizedBox(height: 10.h),
                      Text(getCountriesValue(controller.film.value?.countries),
                          style: CustomTextStyles.m3BodyLarge().copyWith(
                              fontWeight: FontWeight.w800, height: 1.3),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget customIconButton(
      {required String label,
      required Icon icon,
      required Color textColor,
      VoidCallback? function}) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.primaryThemeBlack),
        ),
        onPressed: function,
        child: Column(
          children: [
            icon,
            SizedBox(height: 10.h),
            Text(label,
                maxLines: 2,
                style: CustomTextStyles.m3LabelMedium(color: textColor),
                textAlign: TextAlign.center),
          ],
        ));
  }

  Widget filmDescription(FilmController controller) {
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

  Widget filmSlogan(FilmController controller) {
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

  Widget filmImages(FilmController controller) {
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
                itemCount: controller.imagesFilm.value == null 
                ? controller.filmCard.value!.imagesFilmBytes!.length
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
                                child: controller.filmCard.value?.imagesFilmBytes == null
                                    ? SizedBox.expand(
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
                                      )
                                    : SizedBox.expand(
                                        child: Image.memory(
                                          controller.filmCard.value!.imagesFilmBytes![index]!,
                                          fit: BoxFit.cover,
                                      )
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
    if (genresBuiltList == null) {
      return "Данные отсутствуют";
    }

    String genresValue =
        genresBuiltList.map((country) => country.genre).join(', ');
    return genresValue;
  }

  String getCountriesValue(BuiltList<Country>? countriesBuiltList) {
    if (countriesBuiltList == null) {
      return "Данные отсутствуют";
    }

    String countriesValue =
        countriesBuiltList.map((country) => country.country).join(', ');
    return countriesValue;
  }
}
