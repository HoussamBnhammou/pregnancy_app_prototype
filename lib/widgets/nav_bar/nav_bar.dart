import 'package:flutter/material.dart';
import '../profileButtonWidgets/profileButtonWidgets.dart';

class NavigationBarWidget extends StatelessWidget {
  final String pageTitle;
  final Function() onBackButtonPressed;
  final Function() onProfileButtonPressed;

  NavigationBarWidget({
    required this.pageTitle,
    required this.onBackButtonPressed,
    required this.onProfileButtonPressed,
  });
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue, // Set the desired app bar background color
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: onBackButtonPressed,
        color: Colors.white, // Set the desired back button icon color
      ),
      title: Text(
        pageTitle,
        style: TextStyle(
          color: Colors.white, // Set the desired text color
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        ProfileCircleWidget(
          imageUrl: '',
          onPressed: ()=>{true}),
      ],
    );
  }
}
