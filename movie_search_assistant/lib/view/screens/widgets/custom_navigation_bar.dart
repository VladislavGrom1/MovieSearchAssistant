import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';
import 'package:movie_search_assistant/view/screens/themes/colors.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => NavigationBar(
          backgroundColor: AppColors.primaryThemeBlack,
          indicatorColor: Theme.of(context).primaryColor,
          elevation: 10,
          selectedIndex: NavigationController.to.currentIndex.value,
          onDestinationSelected: (index) => NavigationController.to.changeIndex(index),
          labelTextStyle: WidgetStatePropertyAll(TextStyle(color: AppColors.primaryTextGrey)),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Поиск",
            ),
            NavigationDestination(
              icon: Icon(Icons.bookmark_border),
              selectedIcon: Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              label: "Буду смотреть",
            ),
            NavigationDestination(
              icon: Icon(Icons.video_library_outlined),
              selectedIcon: Icon(
                Icons.video_library,
                color: Colors.white,
              ),
              label: "Библиотека",
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              selectedIcon: Icon(
                Icons.person_2,
                color: Colors.white,
              ),
              label: "Профиль",
            ),
          ],
        ));
  }
}