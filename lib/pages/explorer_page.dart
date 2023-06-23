import 'package:flutter/material.dart';
import 'package:travel_app_flutter/colors/travel_colors.dart';
import 'package:travel_app_flutter/widgets/app_large_text.dart';
import 'package:travel_app_flutter/widgets/card_travel.dart';

import '../widgets/app_text.dart';
import '../widgets/bottom_navigator_bar_travel.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
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
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Explorer Page"),
                      AppText(
                        text: "Other Trips",
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(top: 24),
                  children: const [
                    CardTravel(
                      titleCard: 'Paris | 06/06',
                      imageCard: AssetImage("assets/images/trip1_image.png"),
                    ),
                    CardTravel(
                      titleCard: 'Brasil | 07/09',
                      imageCard: AssetImage(
                        "assets/images/trip2_image.png",
                      ),
                    ),
                    CardTravel(
                      titleCard: 'New York | 23/07',
                      imageCard: AssetImage(
                        "assets/images/trip3_image.png",
                      ),
                    ),
                    CardTravel(
                      titleCard: 'New Zealand | 09/04',
                      imageCard: AssetImage("assets/images/trip4_image.png"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
