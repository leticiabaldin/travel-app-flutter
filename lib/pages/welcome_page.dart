import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app_flutter/colors/travel_colors.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';
import '../widgets/bottom_navigator_bar_travel.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

List images = [
  "assets/images/trip1_image.png",
  "assets/images/trip2_image.png",
  "assets/images/trip3_image.png",
  "assets/images/trip4_image.png",
];

final List<Widget> imageSliders = images
    .map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: [
            Image.asset(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: const Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )),
  ),
))
    .toList();

class _WelcomePageState extends State<WelcomePage> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigatorBarTravel(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Hi, Letícia Baldin!',
            style: TextStyle(
              color: AppTravelColors.blueApp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => context.go('/home'),
            icon: const Icon(
              Icons.exit_to_app_outlined,
              size: 32,
              color: AppTravelColors.blueApp,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 16,
            left: 20,
            right: 20,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppLargeText(text: "Welcome Page"),
                    AppText(
                      text: "Travel App",
                      size: 28,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: 360,
                      child: AppText(
                        text:
                            "Mountain hikes give you an incredible sense of freedom along with endurance test.",
                        size: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 64,
                              vertical: 12,
                            ),
                            backgroundColor: AppTravelColors.blueApp,
                          ),
                          child: const Text(
                            'Add New Travel',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 56),
                    const Text(
                      'Explore other places',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppTravelColors.blueApp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 1.75,
                        enlargeCenterPage: false,
                        scrollDirection: Axis.horizontal,
                        autoPlay: false,
                        autoPlayAnimationDuration: const Duration(milliseconds: 2000),
                        clipBehavior: Clip.antiAliasWithSaveLayer
                      ),
                      items: imageSliders,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
