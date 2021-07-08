import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ncert5/AdminPanelWidget/Controllers/MenuControllers.dart';
import 'package:ncert5/AdminPanelWidget/screens/main/main_screen.dart';
import 'package:ncert5/LoginandReg%20Widget/LoginPage.dart';
import 'package:ncert5/PDFWidget/DownloadPDF.dart';
import 'package:ncert5/WebViewWidget/WebView.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("NCERT"),
                  accountEmail: Text("ncertcourse@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                      child: ClipOval(
                    child: Image(
                        fit: BoxFit.cover,
                        height: 100,
                        width: 100,
                        image: AssetImage(
                          'assets/images/book4.jpg',
                        )),
                  )),
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: ClipOval(
                          child: Image.asset(
                        'assets/images/book2.jpg',
                        fit: BoxFit.cover,
                        height: 150,
                        width: 150,
                      )),
                    )
                  ],
                  onDetailsPressed: () {},
                ),
                Text("Setting"),
                ListTile(
                  title: Text("Change Color"),
                  leading: Icon(Icons.color_lens),
                ),
                ListTile(
                  title: Text("Open the books from Inbuid reader"),
                  leading: Icon(Icons.chrome_reader_mode_outlined),
                ),
                ListTile(
                  title: Text("Dark Mode"),
                  leading: Icon(Icons.invert_colors_on),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MultiProvider(
                                  providers: [
                                    ChangeNotifierProvider(
                                      create: (context) => MenuController(),
                                    ),
                                  ],
                                  child: MainScreen(),
                                )));
                  },
                  child: ListTile(
                    title: Text("Dashboard"),
                    leading: Icon(Icons.invert_colors_on),
                  ),
                ),
                Divider(color: Colors.black),
                Text("Android Apps"),
                ListTile(
                  title: Text("Ncert Books & Solutions"),
                  leading: Image.asset(
                    'assets/images/NSO.jpg',
                    height: 25,
                    width: 25,
                  ),
                ),
                ListTile(
                  title: Text("More Apps"),
                  leading: Image.asset(
                    'assets/images/book2.jpg',
                    height: 25,
                    width: 25,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DownloadPdf()));
                  },
                  child: ListTile(
                      title: Text("Download PDF"),
                      leading: Icon(Icons.file_download)),
                ),
                Divider(color: Colors.black),
                Text("Important"),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebViewExample()));
                  },
                  child: ListTile(
                    title: Text("Security"),
                    leading: Icon(Icons.security),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: ListTile(
                    title: Text("Login"),
                    leading: Icon(Icons.login),
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: ListTile(
                      title: Text("LogOut"),
                      leading: Icon(Icons.logout),
                    )),
              ],
            )));
  }
}

class Bloc {
  final _themeController = StreamController<bool>();
  get changeTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;
}

final bloc = Bloc();
