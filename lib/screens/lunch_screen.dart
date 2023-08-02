


import '../widgets/nav_bar/nav_bar.dart';
import 'package:flutter/material.dart';

class LunchScreen extends StatelessWidget {
  const LunchScreen({super.key});

  
  
  
  
  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:preferredSize,
        child:NavigationBarWidget(pageTitle:'dfsnl',
        onBackButtonPressed:()=> null,
        onProfileButtonPressed:()=> null)
      ),
      body: Center(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text("which way  you want us to know the conception date?"),
               Column(
        
                  children: [
                      TextButton(onPressed: ()=> Null, child: Text('conception date')),
                      TextButton(onPressed: ()=> Null, child: Text('last time u had sex')),
                      TextButton(onPressed: ()=> Null, child: Text('last periode'))
                ]),
              
            ],)
          ),
        ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);

}