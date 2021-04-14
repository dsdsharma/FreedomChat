import 'package:freedomchat/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:freedomchat/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
    );
  }
}
