import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  Future<List<dynamic>> loadData() {
    return rootBundle
        .loadString('data/menu.json')
        .then(json.decode)
        .then((data) {
      options = data['routes'];
      return options;
    });
  }
}

final menuProvider = _MenuProvider();
