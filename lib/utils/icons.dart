import 'package:flutter/material.dart';

IconData getIcon(String name) {
  switch (name) {
    case 'add_alert':
      return Icons.add_alert;

    case 'accessibility':
      return Icons.accessibility;

    case 'folder_open':
      return Icons.folder_open;

    default:
      return Icons.block;
  }
}
