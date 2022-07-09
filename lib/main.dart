import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/utils/routes.dart';
import '/pages/login_page.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      //initialRoute: '/home',
      routes: {
        '/': (context) => LoginPage(),
        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
