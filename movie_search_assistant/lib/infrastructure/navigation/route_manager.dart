import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/movie_library_screen.dart';
import 'package:movie_search_assistant/view/screens/navigation_screen.dart';
import 'package:movie_search_assistant/view/screens/search_category_screen.dart';
import 'package:movie_search_assistant/view/screens/search_home_screen.dart';
import 'package:movie_search_assistant/view/screens/user_profile_screen.dart';
import 'package:movie_search_assistant/view/screens/will_watching_screen.dart';

class RouteManager {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: Routes.navigationScreen,
        page: () => NavigationScreen()),
      // SearchHome Tab
      // GetPage(
      //   name: Routes.searchHomeScreen,
      //   page: () => SearchHomeScreen()),
      GetPage(
        name: Routes.searchCategoryScreen,
        page: () => SearchCategoryScreen()),
      // WillWatching Tab
      // GetPage(
      //   name: Routes.willWatchingScreen, 
      //   page: () => WillWatchingScreen()),
      // MovieLibrary Tab
      // GetPage(
      //   name: Routes.movieLibraryScreen,
      //   page: () => MovieLibraryScreen()),
      // // UserProfile Tab
      // GetPage(
      //   name: Routes.userProfileScreen,
      //   page: () => UserProfileScreen())
    ];
  }
}
