import 'package:flutter/material.dart';

import 'package:components/pages/home.dart';
import 'package:components/pages/alert.dart';
import 'package:components/pages/avatar.dart';
import 'package:components/pages/card.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return {
    '/': (_) => HomePage(),
    '/alert': (_) => AlertPage(),
    '/avatar': (_) => AvatarPage(),
    '/card': (_) => CardPage(),
  };
}
