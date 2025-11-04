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
          final hasInternetConnection = controller.globalNetworkController.isConnectedToInternet.value;
          final isSavedInStorage = controller.filmCard.value != null;
          final hasServerErrorConnection = controller.isErrorConnection.value;

          if (!hasInternetConnection && !isSavedInStorage) {
            return _errorWidget(controller);
          }

          if (hasServerErrorConnection) {
            return _errorWidget(controller);
          }

          if (controller.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          } else {
            return CustomScrollView(
              slivers: [
                _sliverAppBarWidget(controller),
                _sliverListWidget(controller)
              ],
            );
          }
        }),
      ),
    );
  }

  Widget _sliverListWidget(FilmController controller) {

    final bool hasImages = 
    (controller.imagesFilm.value?.items.isNotEmpty == true) ||
    (controller.filmCard.value?.imagesFilmBytes?.isNotEmpty == true);

    final String titleText = controller.film.value?.nameRu ??
                    controller.film.value?.nameOriginal ??
                    "Название отсутствует";

    return SliverList.list(
      children: [
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    titleText,
                    style: CustomTextStyles.m3HeadlineMedium().copyWith(height: 1),
                    textAlign: TextAlign.center),
                SizedBox(height: 10.h),
                _mainFilmInformation(controller),
                SizedBox(height: 10.h),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  _statusWatchButton(controller),
                  SizedBox(width: 20.w),
                  _moreDetailedButton(controller)
                ]),
                SizedBox(height: 20.h),
                _filmDescription(controller),
                SizedBox(height: 20.h),
                _filmSlogan(controller),
                SizedBox(height: 20.h),
                _filmRatingAndReviewCount(
                    "assets/icons/kp.jpg",
                    "Рейтинг KP",
                    controller.film.value?.ratingKinopoisk,
                    controller.film.value?.ratingKinopoiskVoteCount),
                SizedBox(height: 10.h),
                _filmRatingAndReviewCount(
                    "assets/icons/imdb.png",
                    "Рейтинг IMDB",
                    controller.film.value?.ratingImdb,
                    controller.film.value?.ratingImdbVoteCount),
                SizedBox(height: 20.h),
                hasImages
                ? _filmImages(controller)
                : Column(
                  children: [
                    SizedBox(height: 20.h),
                    Text("Не удалось загрузить изображения",
                    style: CustomTextStyles.m3BodyLarge().copyWith(fontWeight: FontWeight.w800, height: 1.3)
                    ),
                    SizedBox(height: 20.h),
                    Icon(Icons.error_outline, color: AppColors.primaryScheme, size: 60.w),
                    SizedBox(height: 20.h)
                  ],
                )
              ]),
        ),
      ],
    );
  }

  Widget _sliverAppBarWidget(FilmController controller) {
    return SliverAppBar(
        leading: IconButton(
          onPressed: () {
            final statusWatch = controller.selectedRadioValue.value;
            final filmId = controller.film.value?.kinopoiskId;

            if (statusWatch == WatchStatuses.DONT_WATCH && filmId != null) {
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
        flexibleSpace: _backgroundAppBarWidget(controller));
  }

  Widget _errorWidget(FilmController controller) {
    return Column(
      children: [
        AppBar(
          backgroundColor: AppColors.primaryThemeBlack,
          leading: IconButton(
              onPressed: () {
                Get.back(id: controller.navId);
              },
              icon: Icon(Icons.arrow_back, color: AppColors.primaryTextWhite)),
        ),
        Expanded(child: CustomErrorWidget(statusCode: 0)),
      ],
    );
  }

  Widget _statusWatchButton(FilmController controller) {
    return ElevatedButton.icon(
      label: Text(controller.selectedRadioValue.value,
          style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryScheme)
              .copyWith(fontWeight: FontWeight.w800, height: 1.3)),
      iconAlignment: IconAlignment.end,
      icon: Icon(Icons.arrow_drop_down, color: AppColors.primaryScheme),
      style: ButtonStyle(
          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: AppColors.primaryScheme, width: 2))),
          backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
      onPressed: () async {
        await Get.dialog(Obx(() => _pickStatusWatchAlertDialog(controller)));
      },
    );
  }

  Widget _pickStatusWatchAlertDialog(FilmController controller) {
    return AlertDialog(
      backgroundColor: AppColors.secondaryThemeGrey,
      title: Text("Выберите статус просмотра",
          style: CustomTextStyles.m3HeadlineMedium(
                  color: AppColors.primaryTextGrey)
              .copyWith(height: 1.3)),
      content: SizedBox(
        height: 280.h,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          RadioGroup<String>(
              groupValue: controller.selectedRadioValue.value,
              onChanged: (value) async {
                controller.updateSelectionRadioValue(value);
                Get.back();
                if (value == WatchStatuses.DONT_WATCH) {
                  await controller.removeFilmFromCategory();
                } else {
                  await controller.saveFilmInCollection();
                }
              },
              child: Column(
                children: [
                  ListTile(
                    leading: Radio<String>(
                      fillColor:
                          WidgetStatePropertyAll(AppColors.primaryTextGrey),
                      value: WatchStatuses.DONT_WATCH,
                    ),
                    title: Text(WatchStatuses.DONT_WATCH,
                        style: CustomTextStyles.m3TitleMedium()
                            .copyWith(fontWeight: FontWeight.w800)),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      fillColor:
                          WidgetStatePropertyAll(AppColors.primaryTextGrey),
                      value: WatchStatuses.WILL_WATCH,
                    ),
                    title: Text(WatchStatuses.WILL_WATCH,
                        style: CustomTextStyles.m3TitleMedium()
                            .copyWith(fontWeight: FontWeight.w800)),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      fillColor:
                          WidgetStatePropertyAll(AppColors.primaryTextGrey),
                      value: WatchStatuses.WATCHED,
                    ),
                    title: Text(WatchStatuses.WATCHED,
                        style: CustomTextStyles.m3TitleMedium()
                            .copyWith(fontWeight: FontWeight.w800)),
                  ),
                ],
              )),
          SizedBox(height: 20.h),
          ElevatedButton(
            style: ButtonStyle(
                minimumSize:
                    WidgetStatePropertyAll(Size(double.infinity, 40.h)),
                alignment: AlignmentGeometry.center,
                backgroundColor:
                    WidgetStatePropertyAll(AppColors.primaryScheme)),
            onPressed: () async {
              Get.back();
            },
            child: Text("Отмена",
                style: CustomTextStyles.m3TitleMedium(
                        color: AppColors.primaryTextWhite)
                    .copyWith(fontWeight: FontWeight.w800)),
          ),
        ]),
      ),
    );
  }

  Widget _moreDetailedButton(FilmController controller) {
    return ElevatedButton.icon(
        label: Text("Подробнее",
            style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryScheme)
                .copyWith(fontWeight: FontWeight.w800, height: 1.3)),
        iconAlignment: IconAlignment.end,
        icon: Icon(Icons.public, color: AppColors.primaryScheme),
        style: ButtonStyle(
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side:
                        BorderSide(color: AppColors.primaryScheme, width: 2))),
            backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
        onPressed: () {
          bool urlIsOpened = controller.launchFilmWebURL();
          if (!urlIsOpened) {
            CustomSnackBar.showError(
                title: "Ошибка", message: "Не удалось перейти по ссылке");
            return;
          }
        });
  }

  Widget _backgroundAppBarWidget(FilmController controller) {
    Widget backgroundWidget;

    final hasPosterBytes = controller.filmCard.value?.posterBytes != null;
    final hasPosterUrl = controller.film.value?.posterUrl != null;

    if (hasPosterBytes) {
      backgroundWidget = Image.memory(
        controller.filmCard.value!.posterBytes!,
        fit: BoxFit.cover,
      );
    } else if (hasPosterUrl) {
      backgroundWidget = CachedNetworkImage(
        imageUrl: controller.film.value?.posterUrl ?? "",
        fit: BoxFit.cover,
        placeholder: (content, url) =>
            Container(color: AppColors.primaryTextGrey),
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
                background: backgroundWidget),
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

  Widget _mainFilmInformation(FilmController controller) {

    final showOriginalTitle = controller.film.value?.nameOriginal != null;
    final isSerial = controller.film.value?.serial == true;

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
                      if (showOriginalTitle) ...[
                        Text(controller.film.value!.nameOriginal!,
                            style: CustomTextStyles.m3BodyLarge(
                                    color: AppColors.primaryTextWhite)
                                .copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center),
                        SizedBox(height: 10.h),
                      ],
                      Text(isSerial
                        ? "${controller.film.value?.startYear} - ${controller.film.value?.endYear ?? "настоящее время"}"
                        : "${controller.film.value?.year}",
                        style: CustomTextStyles.m3BodyLarge().copyWith(
                        fontWeight: FontWeight.w800, height: 1.3),
                        textAlign: TextAlign.center),
                      SizedBox(height: 10.h),
                      Text(_getGenresValue(controller.film.value?.genres),
                          style: CustomTextStyles.m3BodyLarge().copyWith(
                              fontWeight: FontWeight.w800, height: 1.3),
                          maxLines: 3,
                          textAlign: TextAlign.start),
                      SizedBox(height: 10.h),
                      Text(_getCountriesValue(controller.film.value?.countries),
                          style: CustomTextStyles.m3BodyLarge().copyWith(
                              fontWeight: FontWeight.w800, height: 1.3),
                          textAlign: TextAlign.start),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget _filmDescription(FilmController controller) {
    final descriptionText = controller.film.value?.description ?? "Описание отсутствует";

    return Card(
      color: AppColors.secondaryThemeGrey,
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Text(
            descriptionText,
            style: CustomTextStyles.m3BodyLarge()
                .copyWith(fontWeight: FontWeight.w800, height: 1.3),
            textAlign: TextAlign.left),
      ),
    );
  }

  Widget _filmSlogan(FilmController controller) {
    final textSlogan = controller.film.value?.slogan == null
                ? "Слоган отсутствует"
                : "\"${controller.film.value?.slogan}\"";
    return Card(
      color: AppColors.secondaryThemeGrey,
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Text(
            textSlogan,
            style: CustomTextStyles.m3BodyMedium().copyWith(
              fontStyle: FontStyle.italic,
              height: 1,
            )),
      ),
    );
  }

  Widget _filmRatingAndReviewCount(
    String imagePath,
    String resourseName,
    num? rating,
    int? voteCount,
  ) {

    final ratingText = rating == null ? "-" : rating.toString();
    final voteCountText = "${voteCount == null ? 0 : voteCount.toString()} оценок";

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
              Text(ratingText,
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
                        voteCountText,
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

  Widget _filmImages(FilmController controller) {

    final itemCount = controller.imagesFilm.value == null
                    ? controller.filmCard.value!.imagesFilmBytes!.length
                    : controller.imagesFilm.value!.items.length;

    final hasImageFilmBytes = controller.filmCard.value?.imagesFilmBytes != null;

    return Column(
      children: [
        Row(
          children: [
            Text("Кадры из фильма", style: CustomTextStyles.m3TitleLarge()),
          ],
        ),
        SizedBox(height: 20.h),
        SizedBox(
            height: 200.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: itemCount,
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
                                child: !hasImageFilmBytes
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
                                        controller.filmCard.value!
                                            .imagesFilmBytes![index]!,
                                        fit: BoxFit.cover,
                                      )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
        SizedBox(height: 20.h)
      ],
    );
  }

  String _getGenresValue(BuiltList<Genre>? genresBuiltList) {
    if (genresBuiltList == null) {
      return "Данные отсутствуют";
    }

    String genresValue =
        genresBuiltList.map((country) => country.genre).join(', ');
    return genresValue;
  }

  String _getCountriesValue(BuiltList<Country>? countriesBuiltList) {
    if (countriesBuiltList == null) {
      return "Данные отсутствуют";
    }

    String countriesValue =
        countriesBuiltList.map((country) => country.country).join(', ');
    return countriesValue;
  }
}
