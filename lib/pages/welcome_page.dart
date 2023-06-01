import 'package:flutter/material.dart';
import 'package:travel_app_flutter/pages/travel_page.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';
import '../widgets/bottom_navigator_bar_travel.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome4.png",
    "welcome5.png",
    "welcome6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigatorBarTravel(),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/${images[index]}",
                ),
                fit: BoxFit.contain,
                repeat: ImageRepeat.noRepeat,
              ),
              color: Colors.transparent,
            ),
            child: Container(
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
                      AppLargeText(text: "Trips"),
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
        },
      ),
    );
  }
}
