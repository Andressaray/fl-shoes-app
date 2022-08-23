import 'package:flutter/material.dart';

import 'package:shoes_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'shoe';
  static Map<String, Widget Function(BuildContext)> routes = {
    'shoe': (BuildContext context) => const ShoeScreen(),
    'showDetail': (BuildContext context) => const ShoeDetailScreen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
