import 'package:flutter/material.dart';
import 'package:order_app_ui/ui/app_constants/padding_size.dart';

import '../../widgets/drawer.dart';
import '../controller/notification_controller.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  NotificationScreenController notificationScreenController =
      NotificationScreenController();
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Column(
          children: [
            IconButton(
              onPressed: () => _key.currentState!.openDrawer(),
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 20),
            child: Text(
              "Mark all read",
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: paddingM, right: paddingM),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Notifications",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: paddingXXXXXL,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: notificationScreenController.icons[index],
                    ),
                    title: Text(
                      notificationScreenController.titles[index],
                      style: TextStyle(fontSize: 15),
                    ),
                    subtitle: Text(
                      notificationScreenController.subtitles[index],
                      // style: TextStyle(fontSize: 14),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return ColoredBox(
                    color: Colors.grey[200]!,
                    child: SizedBox(
                      height: 1,
                      width: double.infinity,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
