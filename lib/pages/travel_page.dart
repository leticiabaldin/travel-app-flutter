import 'package:flutter/material.dart';
import 'package:travel_app_flutter/pages/profile_page.dart';
import 'package:travel_app_flutter/pages/welcome_page.dart';
import 'package:travel_app_flutter/widgets/app_large_text.dart';

import '../widgets/app_text.dart';
import '../widgets/bottom_navigator_bar_travel.dart';
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
      bottomNavigationBar: const BottomNavigatorBarTravel(),
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