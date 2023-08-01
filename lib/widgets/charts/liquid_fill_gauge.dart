import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class WaterIntakeGauge extends StatelessWidget {
  final double value; // Value between 0.0 and 1.0 representing the progress
  final double height; // Height of the gauge
  final Color waterColor; // Color for the water in the gauge

  WaterIntakeGauge({
    required this.value,
    this.height = 150,
    this.waterColor = Colors.blue, // Provide a default water color
  });

  @override
  Widget build(BuildContext context) {
    return LiquidLinearProgressIndicator(
      value: value,
      backgroundColor: Colors.grey, // Customize the background color
      valueColor: AlwaysStoppedAnimation(waterColor),
      borderRadius: height / 2,
      direction: Axis.vertical, // Use Axis.horizontal for horizontal gauge
      center: Text(
        '${(value * 100).toInt()}%',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
