import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:movie_search_assistant/bindings/login_binding.dart';
import 'package:movie_search_assistant/bindings/navigation_binding.dart';
import 'package:movie_search_assistant/controllers/login_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/login_screen.dart';
import 'package:movie_search_assistant/view/screens/watched_library_screen.dart';
import 'package:movie_search_assistant/view/screens/navigation_screen.dart';
import 'package:movie_search_assistant/view/screens/root_screen.dart';
import 'package:movie_search_assistant/view/screens/search_category_screen.dart';
import 'package:movie_search_assistant/view/screens/search_home_screen.dart';
import 'package:movie_search_assistant/view/screens/user_profile_screen.dart';
import 'package:movie_search_assistant/view/screens/will_watching_screen.dart';

class RouteManager {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: Routes.rootScreen, 
        page: () => RootScreen(),
        ),
      GetPage(
        name: Routes.loginScreen, 
        page: () => LoginScreen(),
        binding: LoginBinding()),
      GetPage(
        name: Routes.navigationScreen,
        page: () => NavigationScreen(),
        binding: NavigationBinding()),
    ];
  }
}
