import 'package:flutter/material.dart';
import 'package:travel_app_flutter/pages/profile_page.dart';
import 'package:travel_app_flutter/pages/welcome_page.dart';
import 'package:travel_app_flutter/widgets/app_large_text.dart';

import '../widgets/app_text.dart';
import '../widgets/bottom_navigation_bar.dart';
import 'explorer_page.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  SizedBox(
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
      body: Container(
        margin: const EdgeInsets.only(
          top: 100,
          left: 20,
          right: 20,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(text: "Travel Page"),
                AppText(
                  text: "Mountain",
                  size: 30,
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 250,
                  child: AppText(
                    text:
                    "Mountain hikes give you an incredible sense of freedom along with endurance test.",
                    size: 16,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
