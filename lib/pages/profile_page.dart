import 'package:flutter/material.dart';
import 'package:travel_app_flutter/pages/travel_page.dart';
import 'package:travel_app_flutter/pages/welcome_page.dart';
import 'package:travel_app_flutter/widgets/app_large_text.dart';

import '../widgets/app_text.dart';
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
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomAppBar(
          color: Colors.deepPurpleAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WelcomePage()));
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              IconButton(
                  icon: const Icon(
                    Icons.airplanemode_active_rounded,
                    color: Colors.white,
                    size: 32,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TravelPage()));
                  }),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ExplorerPage()));
                },
                icon: const Icon(
                  Icons.image_rounded,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfilePage()));
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 100,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                AppLargeText(text: 'My profile page'),
                const SizedBox(width: 40),
                const CircleAvatar(
                  radius: 38, // Image radius
                  foregroundImage: AssetImage("assets/images/profile-img.jpg"),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 250,
                child: AppText(
                  text:
                      "Mountain hikes give you an incredible sense of freedom along with endurance test.",
                  size: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
