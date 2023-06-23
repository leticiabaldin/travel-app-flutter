import 'package:flutter/cupertino.dart';

import '../colors/travel_colors.dart';
import 'app_text.dart';

class EmptyStateTravel extends StatefulWidget {
  const EmptyStateTravel({Key? key}) : super(key: key);

  @override
  State<EmptyStateTravel> createState() => _EmptyStateTravelState();
}

class _EmptyStateTravelState extends State<EmptyStateTravel> {
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        AppText(
          text: "You don't have any travels yet :(",
          color: AppTravelColors.blueApp,
          size: 18,
        ),
        Center(
          child: Image.asset(
            'assets/images/emptyStateWelcome.png',
            width: 380,
            height: 380,
          ),
        ),
      ],
    );
  }
}
