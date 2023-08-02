import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/screens/profile_page.dart';

import 'package:pregnancy_app_prototype/widgets/nav_bar/nav_bar.dart';

class SettingsPage extends StatelessWidget{
  const SettingsPage({super.key});


  @override
  Widget build(BuildContext context) {


    var rowButtons = Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()));

                // Add your icon button onPressed logic here
                print('Settings Icon pressed!');
              },
              ),
              IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const Profile()));
              }),

        ],);


    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: NavigationBarWidget(
          pageTitle:'Settings',
           onBackButtonPressed: () => null,
           onProfileButtonPressed: () => null,
           )

      ),
      body: 
       Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: Container()),
        rowButtons,
      ]),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);

}