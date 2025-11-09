import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/navigators/watched_library_navigator.dart';
import 'package:movie_search_assistant/infrastructure/navigation/navigators/search_home_navigator.dart';
import 'package:movie_search_assistant/infrastructure/navigation/navigators/user_profile_navigator.dart';
import 'package:movie_search_assistant/infrastructure/navigation/navigators/will_watching_navigator.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/repositories/user_repository.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/widgets/custom_dialog_widget.dart';
import 'package:movie_search_assistant/view/widgets/custom_navigation_bar.dart';
import 'package:movie_search_assistant/view/widgets/user_on_close_interaction_widget.dart';

import '../themes/custom_text_styles.dart';

class NavigationScreen extends StatelessWidget{
   const NavigationScreen({super.key});

   @override
   Widget build(BuildContext context){
    return Obx(() => UserOnCloseInteractionWidget(
      currentNavigatorIndex: NavigationController.to.currentIndex.value,
      child: Scaffold(
            body: IndexedStack(
              index: NavigationController.to.currentIndex.value,
              children: [
                SearchHomeNavigator(),
                WillWatchingNavigator(),
                WatchedLibraryNavigator(),
                UserProfileNavigator()
              ],
            ),
            bottomNavigationBar: CustomNavigationBar(),
            )
        )
    );
   }
}