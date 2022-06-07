import 'package:altogic_app/src/app/pages/home/home_view.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Altogic App",
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
