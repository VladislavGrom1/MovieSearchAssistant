import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/search_home_screen.dart';
import 'package:movie_search_assistant/view/screens/user_profile_screen.dart';

class UserProfileNavigator extends StatelessWidget{
  UserProfileNavigator({super.key});

  @override
  Widget build(BuildContext context){
    return Navigator(
      key: Get.nestedKey(NavigatorIds.userProfile),
      onGenerateRoute: (settings) {
        // TODO: Заменить if на вложенный экран, когда он появится
        if(settings.name == Routes.userProfileScreen){
          return GetPageRoute(
            settings: settings,
            page: () => UserProfileScreen(),
          );
        } else{
          return GetPageRoute(
            settings: settings,
            page: () => UserProfileScreen(),
          );
        }
      },
    );
  }
}