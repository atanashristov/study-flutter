import 'package:flutter/material.dart';
import 'package:styled_background/app/app.dart';

class CardAd extends StatelessWidget {
  const CardAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: CardListItem(
        text: 'This is an ad',
        backgroundColor: Colors.amber.shade100,
      ),
    );
  }
}
