import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // ignore: missing_required_param
          UserAccountsDrawerHeader(
            accountName: Text("Barcode"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://assets.turbologo.com/blog/fr/2019/10/19134208/spiderman-logo-illustration-958x575.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.scanner,
            ),
            title: Text('Scanner'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/scanner');
            },
            trailing: Icon(
              Icons.chevron_right,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.create,
            ),
            title: Text('Generate code'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/generate');
            },
            trailing: Icon(
              Icons.chevron_right,
            ),
          ),
        ],
      ),
    );
  }
}
