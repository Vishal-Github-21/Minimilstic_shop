import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:flutter_application_1/pages/chart_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/intro_page.dart';
import 'package:flutter_application_1/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
   ChangeNotifierProvider( 
   create: (context)=>Shop(),
   child: MyApp(),
   )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:const IntroPage(),
      theme: lightMode,
      routes: {
        "/intro_page":(context)=>IntroPage(),
        "/home_page":(context)=>HomePage(),
        "/chart_page":(context)=>ChartPage(),
      },
    );
  }
}
