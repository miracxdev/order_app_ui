import 'package:flutter/material.dart';

class NotificationScreenController {
  List<String> titles = [
    "Your order #85739 has been succsfully",
    "Special Big Sale up to 50% Off all product today!",
    "Your order #85739 has been shipped",
    "Your order #85739 has been succsfully",
    "Your order #85739 has been succsfully"
  ];

  List<String> subtitles = [
    "15 mins ago",
    "50 mins ago",
    "1 day ago",
    "2 days ago",
    "3 days ago"
  ];

  List<Icon> icons = [
    Icon(
      Icons.file_present,
      size: 20,
    ),
    Icon(
      Icons.cancel,
      size: 20,
    ),
    Icon(
      Icons.route,
      size: 20,
    ),
    Icon(
      Icons.file_present,
      size: 20,
    ),
    Icon(
      Icons.file_present,
      size: 20,
    ),
  ];
}
