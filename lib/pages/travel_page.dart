import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_flutter/widgets/empty_state.dart';
import '../widgets/bottom_navigator_bar_travel.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  State<TravelPage> createState() => _TravelPageState();
}



class _TravelPageState extends State<TravelPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const BottomNavigatorBarTravel(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [EmptyStateTravel()],
        ),
      )
    );
  }
}
