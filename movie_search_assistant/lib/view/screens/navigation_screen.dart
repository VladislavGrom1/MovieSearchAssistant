import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/navigators/movie_library_navigator.dart';
import 'package:movie_search_assistant/infrastructure/navigation/navigators/search_home_navigator.dart';
import 'package:movie_search_assistant/infrastructure/navigation/navigators/user_profile_navigator.dart';
import 'package:movie_search_assistant/infrastructure/navigation/navigators/will_watching_navigator.dart';
import 'package:movie_search_assistant/view/widgets/custom_navigation_bar.dart';

class NavigationScreen extends StatelessWidget{
   const NavigationScreen({super.key});

   @override
   Widget build(BuildContext context){
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: NavigationController.to.currentIndex.value,
        children: [
          SearchHomeNavigator(),
          WillWatchingNavigator(),
          MovieLibraryNavigator(),
          UserProfileNavigator()
        ],
      )
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
   }
}