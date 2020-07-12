import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Page')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _cardType1(),
          SizedBox(height: 24),
          _cardType2(),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.pink),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          ButtonBar(
            children: [
              FlatButton(
                child: Text('OK'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardType2() {
    final landScapeImage = FadeInImage(
      image: NetworkImage(
          'https://images.unsplash.com/photo-1500964757637-c85e8a162699?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1978&q=80'),
      placeholder: AssetImage('assets/jar-loading.gif'),
      fadeInDuration: Duration(milliseconds: 125),
      fit: BoxFit.cover,
      height: 200,
    );

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(8),
            child: landScapeImage,
          ),
          SizedBox(height: 8),
          Text('Landscape image', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
