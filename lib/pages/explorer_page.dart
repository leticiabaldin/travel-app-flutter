import 'package:flutter/material.dart';
import 'package:travel_app_flutter/widgets/app_large_text.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
              child: AppLargeText(text: 'Explorer page'),
            ),
          ],
        ),
      ),
    );
  }
}
