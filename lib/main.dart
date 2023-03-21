import 'package:flutter/material.dart';
import 'package:flutter_catelogapplication/Pages/home_page.dart';
import 'package:flutter_catelogapplication/Pages/login_page.dart';
import 'package:flutter_catelogapplication/Pages/widgets/theme.dart';
import 'package:flutter_catelogapplication/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/home",
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoutes: (context) => MyHomePage(),
        "/login": (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
