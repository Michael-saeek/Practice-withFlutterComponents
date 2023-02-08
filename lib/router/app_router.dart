import 'package:flutter/material.dart';
import 'package:fl_components/screens/login_screen.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/models/menu_options.dart';

class AppRouter {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'login',
        name: 'Login screen',
        screen: const LoginScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'alertscreen',
        name: 'Alert screen',
        screen: const AlertScreen(),
        icon: Icons.warning_rounded),
    MenuOption(
        route: 'cardscreen',
        name: 'Card screen',
        screen: const CardScreen(),
        icon: Icons.card_travel_outlined),
    MenuOption(
        route: 'listview1',
        name: 'List screen',
        screen: const Listview1(),
        icon: Icons.list_alt_outlined),
    MenuOption(
        route: 'avatar',
        name: 'Avatar screen',
        screen: const AvatarScreen(),
        icon: Icons.person),
    MenuOption(
        route: 'animated',
        name: 'Animated screen',
        screen: const AnimatedScreen(),
        icon: Icons.animation),
    MenuOption(
        route: 'textinput',
        name: 'TextInput screen',
        screen: const InputScreen(),
        icon: Icons.input),
    MenuOption(
        route: 'slider',
        name: 'Slider screen',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_rounded),
    MenuOption(
        route: 'list_view_builder',
        name: 'List View screen',
        screen: const ListViewScreen(),
        icon: Icons.image_search),
  ];

  /*  <route>: <Widget a retornar>*/
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /* Ruta dinamica */
  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
