import 'package:flutter/material.dart';

class ArticleComponent extends StatelessWidget {
  // parameters
  final String title;
  final String text;
  final String imageUrl;

  // constructure
  const ArticleComponent(
      {super.key,
      required this.title,
      required this.text,
      required this.imageUrl});

  // DON'T TOUCH THIS
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  // Main Code
  Widget _buildBody() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 32),
          ),
          Text(text),
          Image.asset(imageUrl)
        ],
      );
}
