import 'package:examen1/screens/screens.dart';
import 'package:flutter/material.dart';

import '../models/menu_options.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOptions(
        route: 'listtview1',
        icon: Icons.list,
        name: 'Listview version 1',
        screen: const ListView1Screen()),
    MenuOptions(
        route: 'listtview2',
        icon: Icons.list,
        name: 'Listview version 2',
        screen: const ListView2Screen()),
    MenuOptions(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOptions(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'avatar',
        icon: Icons.account_circle, // Cambiado a Icons.account_circle
        name: 'Avatar Screen',
        screen: const AvatarScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
