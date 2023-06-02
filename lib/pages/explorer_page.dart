import 'package:flutter/material.dart';
import 'package:travel_app_flutter/widgets/app_large_text.dart';

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
                children: [
                  Card(
                    margin: const EdgeInsets.only(bottom: 32),
                    elevation: 8,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                         Container(
                           margin: const EdgeInsets.only(top: 16),
                          height: 360,
                          child: Image(
                            image: AssetImage("assets/images/trip1_image.png"),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 58),
                          alignment: Alignment.bottomRight,
                          child: const Text(
                            'Paris | 05/06',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          height: 360,
                          child: const Image(
                            image: AssetImage("assets/images/trip2_image.png"),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 58),
                          alignment: Alignment.bottomRight,
                          child: const Text(
                            'Paris | 05/06',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          height: 360,
                          child: Image(
                            image: AssetImage("assets/images/trip1_image.png"),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 58),
                          alignment: Alignment.bottomRight,
                          child: const Text(
                            'Paris | 05/06',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),)
            ],
          ),
        ));
  }
}
