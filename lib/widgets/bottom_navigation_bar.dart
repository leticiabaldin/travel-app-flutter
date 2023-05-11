import 'package:flutter/material.dart';

import '../pages/travel_page.dart';

class BottomNavigatorTravelBar extends StatefulWidget {
  const BottomNavigatorTravelBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorTravelBar> createState() => _BottomNavigatorTravelBarState();
}

class _BottomNavigatorTravelBarState extends State<BottomNavigatorTravelBar> {
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
                onPressed: () {},
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
                onPressed: () {},
                icon: const Icon(
                  Icons.image_rounded,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: () {},
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
    );
  }
}
