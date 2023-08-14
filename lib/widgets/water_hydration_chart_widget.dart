import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class HydrationBarChart extends StatelessWidget {
  final List<double> hydrationLevels; // List of hydration levels for each day

  HydrationBarChart({required this.hydrationLevels});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.0),
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 10, // Adjust as needed based on your data
          barGroups: hydrationLevels
              .asMap()
              .entries
              .map(
                (entry) => BarChartGroupData(
                  x: entry.key,
                  barRods: [
                    BarChartRodData(
                      y: entry.value,
                      colors: [Colors.blue],
                    ),
                  ],
                ),
              )
              .toList(),
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
              showTitles: true,
           
              margin: 0,
              getTitles: (double value) {
                // Return the day labels here
                // You can modify this logic based on your needs
                return (value + 1).toString();
              },
            ),
            leftTitles: SideTitles(
              showTitles: true,
          
              margin: 0,
              getTitles: (double value) {
                // Return the hydration level labels here
                return value.toString();
              },
            ),
          ),
        ),
      ),
    );
  }
}
