import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/change_api_key_controller.dart';
import 'package:movie_search_assistant/controllers/user_profile_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/change_api_key_screen.dart';
import 'package:movie_search_assistant/view/screens/search_home_screen.dart';
import 'package:movie_search_assistant/view/screens/user_profile_screen.dart';

class UserProfileNavigator extends StatelessWidget{
  UserProfileNavigator({super.key});

  @override
  Widget build(BuildContext context){
    return Navigator(
      key: Get.nestedKey(NavigatorIds.userProfile),
      onGenerateRoute: (settings) {
        if(settings.name == Routes.changeApiKeyScreen){

          if (Get.isRegistered<ChangeApiKeyController>()) {
            Get.delete<ChangeApiKeyController>();
          }

          Get.put(ChangeApiKeyController());
          return GetPageRoute(
            settings: settings,
            page: () => ChangeApiKeyScreen(),
          );
        } else{

          if (Get.isRegistered<UserProfileController>()) {
            Get.delete<UserProfileController>();
          }

          Get.put(UserProfileController());
          return GetPageRoute(
            settings: settings,
            page: () => UserProfileScreen(),
          );
        }
      },
    );
  }
}