import 'package:flutter/material.dart';
import 'package:Aplikasi_Pengingat/layout/home_layout.dart';
import 'package:Aplikasi_Pengingat/shared/constants/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          bottomSheetTheme: BottomSheetThemeData(backgroundColor: kThemeColor)
          /* dark theme settings */
          ),
      //themeMode: ThemeMode.dark,
      title: 'Todo Apps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeLayout(),
    );
  }
}
