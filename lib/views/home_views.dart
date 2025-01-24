import 'package:flutter/material.dart';
import 'package:flutter_project/views/calculator_view.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(child: CalculatorView()));
  }
}
