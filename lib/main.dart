import 'package:flutter/material.dart';
import 'package:travel_app_flutter/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: const Color(0XFFFFFFFF)),
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}

