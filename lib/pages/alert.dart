import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Page')),
      body: Center(
        child: RaisedButton(
          child: Text('SHOW ALERT'),
          onPressed: () {
            _showAlert(context);
          },
          shape: StadiumBorder(),
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: _buildDemoDialog,
    );
  }

  AlertDialog _buildDemoDialog(BuildContext context) {
    return AlertDialog(
      title: Text('Title'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('This is the content...'),
          FlutterLogo(size: 100),
        ],
      ),
      actions: [
        ButtonBar(
          children: [
            FlatButton(
                child: Text('CANCEL'),
                onPressed: () => Navigator.of(context).pop()),
            FlatButton(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop()),
          ],
        ),
      ],
    );
  }
}
