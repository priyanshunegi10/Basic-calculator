import 'package:flutter/material.dart';
import 'package:flutter_project/views/home_views.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter learn",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeViews(),
    );
  }
}
