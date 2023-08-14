import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/screens/profile_page.dart';
import 'profile_button_widgets.dart';

class NavigationBarWidget extends StatelessWidget {
  final String pageTitle;
  final Function() onBackButtonPressed;
  final Function() onProfileButtonPressed;

  const NavigationBarWidget({
    super.key,
    required this.pageTitle,
    required this.onBackButtonPressed,
    required this.onProfileButtonPressed,
  });
  Size get preferredSize => const Size.fromHeight(56);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue, // Set the desired app bar background color
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.white, // Set the desired back button icon color
      ),
      title: Text(
        pageTitle,
        style: const TextStyle(
          color: Colors.white, // Set the desired text color
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        ProfileCircleWidget(
            imageUrl: '',
            onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()))
                }),
      ],
    );
  }
}
