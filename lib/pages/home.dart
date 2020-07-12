import 'package:flutter/material.dart';

import 'package:components/utils/icons.dart';
import 'package:components/providers/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Components')),
      body: _buildMenuList(),
    );
  }

  Widget _buildMenuList() {
    return FutureBuilder(
      initialData: [],
      future: menuProvider.loadData(),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? ListView(children: _buildItems(snapshot.data, context))
            : Text('Loading...');
      },
    );
  }

  List<Widget> _buildItems(List<dynamic> menu, BuildContext context) {
    return menu
        .map((item) => ListTile(
              leading: Icon(getIcon(item['icon']), color: Colors.pink),
              title: Text(item['text']),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.pink),
              onTap: () {
                Navigator.pushNamed(context, item['name']);
              },
            ))
        .toList();
  }
}
