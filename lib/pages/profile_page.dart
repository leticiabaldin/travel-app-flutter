import 'package:flutter/material.dart';
import 'package:travel_app_flutter/widgets/app_large_text.dart';

import '../widgets/app_text.dart';
import '../widgets/bottom_navigator_bar_travel.dart';
import 'explorer_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:const BottomNavigatorBarTravel(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            //color: AppTravelColors.pink,
            margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 24),
            child: Container(
              margin: const EdgeInsets.only(
                top: 100,
                left: 20,
                right: 20,
              ),
              child: Column(

                children: [

                  Row(
                    children: [
                      AppLargeText(text: 'Letícia Baldin',color: Colors.black54,),
                      const SizedBox(width: 50),
                      const CircleAvatar(
                        radius: 45, // Image radius
                        foregroundImage: AssetImage("assets/images/profile-img.jpg"),
                      ),

                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                     // margin: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: 250,
                        child: AppText(
                          text:
                          "Mountain hikes give you an incredible sense of freedom along with endurance test.",
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16,)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}