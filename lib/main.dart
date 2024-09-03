import 'package:basketball_points_counter_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const PointsCounter(),
  );
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
