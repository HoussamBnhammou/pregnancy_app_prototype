import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/screens/settings_page.dart';
import 'package:pregnancy_app_prototype/widgets/nav_bar.dart';
import 'package:pregnancy_app_prototype/widgets/water_hydration_chart_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    const double imageSize = 80;
    const borderColor = Colors.black;
    const double borderWidth = 2;

    var rowButtons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SettingsPage()));

            // Add your icon button onPressed logic here
            print('Settings Icon pressed!');
          },
        ),
        IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            }),
      ],
    );

    var profileImage = Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('./y_and_b.jpg'),
        ),
      ),
    );

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(57),
          child: NavigationBarWidget(
            onBackButtonPressed: () => null,
            onProfileButtonPressed: () => null,
            pageTitle: 'Profile',
            returnButton: true,
            profileButton: false,
          )),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [profileImage, const Text("fatima zohra")],
          ),
          SizedBox(
          height: MediaQuery.of(context).size.height*0.5,
            child:HydrationBarChart(hydrationLevels: [1.3, 1.35, 1.5,]),),

          
          rowButtons
        ],
      ),
    );

    // TODO: implement build
  }
}
