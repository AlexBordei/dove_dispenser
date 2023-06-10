import 'package:dove_dispenser/components/next_button.dart';
import 'package:dove_dispenser/product_selection/views/views.dart';
import 'package:flutter/material.dart';

import 'start/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dove Dispenser',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductSelection(),
    );
  }
}
