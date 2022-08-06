import 'package:flutter/material.dart';
import 'package:order_app_ui/ui/app_constants/padding_size.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_new_outlined),
                    onPressed: () => {Navigator.of(context).pop()},
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/51439795?v=4"),
                  ),
                  title: Text("Soner Karaevli"),
                  contentPadding: EdgeInsets.only(
                    left: 10,
                  ),
                  subtitle: Text("sonerdev@icloud.com"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: paddingL,
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Colors.grey[300],
            ),
            title: Text('Home'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(
              Icons.kayaking,
              color: Colors.grey[300],
            ),
            title: Text('New Collections'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.save_alt_outlined,
              color: Colors.grey[300],
            ),
            title: Text("Editor's Picks"),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.airplane_ticket,
              color: Colors.grey[300],
            ),
            title: Text('Top Deals'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.grey[300],
            ),
            title: Text('Notifications'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey[300],
            ),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
