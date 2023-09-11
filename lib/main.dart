import 'package:flutter/material.dart';
import 'package:islamy_project/home/home_screen.dart';
import 'package:islamy_project/home/quran/sura_details_screen.dart';
import 'package:islamy_project/home/radio/radio_screen.dart';
import 'package:islamy_project/my_theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        RadioTab.routeName: (context) => RadioTab(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}