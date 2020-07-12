import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  final user = _User(
      name: 'Jimmy Murillo',
      username: 'salchichongallo',
      avatarUrl:
          'https://avatars1.githubusercontent.com/u/6699690?s=460&u=14e6d50f13cf5ae8e1fe231839c7c1721cf0f4ff&v=4');

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
          actions: [
            Container(
              child: CircleAvatar(child: Text(user.initials)),
              margin: EdgeInsets.only(right: 16),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_profileCard()],
              ),
            )
          ],
        ));
  }

  Widget _profileCard() {
    final avatar = Container(
      width: 196,
      height: 196,
      child: CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl)),
      margin: EdgeInsets.only(bottom: 20),
    );

    final title = Text(user.name,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold));

    final username = Text(user.username,
        style: TextStyle(fontSize: 18, color: Colors.black38));

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [avatar, title, username],
      ),
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 1, color: Colors.grey[300]),
      ),
    );
  }
}

class _User {
  final String name;
  final String username;
  final String avatarUrl;

  _User({
    @required this.name,
    @required this.username,
    @required this.avatarUrl,
  });

  String get initials {
    if (name == '') {
      return '';
    }

    var initials = name[0].toUpperCase();

    var index = name.indexOf(' ', 1);
    if (index != -1 && name[index + 1] != null) {
      initials += name[index + 1].toUpperCase();
    }

    return initials;
  }
}
