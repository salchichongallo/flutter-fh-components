import 'package:flutter/material.dart';

import 'package:components/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      theme: ThemeData(primarySwatch: Colors.pink),
      routes: getAppRoutes(),
      onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (_) =>
              Center(child: Text('Route ${settings.name} not found'))),
    );
  }
}
