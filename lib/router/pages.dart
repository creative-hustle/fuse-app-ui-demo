import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ofc_port/router/router_name.dart';
import 'package:ofc_port/screens/chat/chat_binding.dart';
import 'package:ofc_port/screens/chat/chat_screen.dart';
import 'package:ofc_port/screens/home/home_binding.dart';
import 'package:ofc_port/screens/home/home_screen.dart';
import 'package:ofc_port/screens/message/message_binding.dart';
import 'package:ofc_port/screens/message/message_screen.dart';
import 'package:ofc_port/screens/profile/profile_binding.dart';
import 'package:ofc_port/screens/profile/profile_screen.dart';
import 'package:ofc_port/screens/splash/splash_binding.dart';
import 'package:ofc_port/screens/splash/splash_screen.dart';

class Pages {
  static List<GetPage> pages() {
    return [
      GetPage(
        name: RouterName.splash,
        page: () => const SplashScreen(),
        binding: SplashBinding(),
      ),
      GetPage(
        name: RouterName.home,
        page: () => const HomeScreen(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: RouterName.profile,
        page: () => const ProfileScreen(),
        binding: ProfileBinding(),
      ),
      GetPage(
        name: RouterName.message,
        page: () => const MessageScreen(),
        binding: MessageBinding(),
      ),
      GetPage(
        name: RouterName.chat,
        page: () => const ChatScreen(),
        binding: ChatBinding(),
      ),

      // GetPage(
      //     name: RouterName.search,
      //     page: () => const SearchPage(),
      //     binding: SearchBinding()),
    ];
  }
}
