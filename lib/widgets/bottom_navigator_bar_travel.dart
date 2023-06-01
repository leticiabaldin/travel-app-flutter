import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class BottomNavigatorBarTravel extends StatefulWidget {
  const BottomNavigatorBarTravel({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBarTravel> createState() =>
      _BottomNavigatorBarTravelState();
}

class _BottomNavigatorBarTravelState extends State<BottomNavigatorBarTravel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: BottomAppBar(
        color: Colors.deepPurpleAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => context.go('/'),
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
              onPressed: () => context.go('/travel'),
            ),
            IconButton(
              onPressed: () => context.go('/explorer'),
              icon: const Icon(
                Icons.image_rounded,
                color: Colors.white,
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () => context.go('/profile'),
              icon: const Icon(
                Icons.person,
                color: Colors.white,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
