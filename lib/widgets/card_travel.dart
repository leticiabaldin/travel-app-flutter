import 'package:flutter/material.dart';
import 'package:travel_app_flutter/widgets/app_text.dart';

class CardTravel extends StatelessWidget {
  final String titleCard;
  final AssetImage imageCard;

  const CardTravel({
    Key? key,
    required this.titleCard,
    required this.imageCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 32),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16),
            height: 360,
            child: Image(
              image: imageCard,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 58),
            alignment: Alignment.bottomRight,
            child: Text(
              titleCard,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 0,
              bottom: 16,
              right: 40,
              left: 40,
            ),
            child: AppText(
                text:
                    'It is a long established fact that a reader will be distracted. Will be distracted'),
          ),
        ],
      ),
    );
  }
}
