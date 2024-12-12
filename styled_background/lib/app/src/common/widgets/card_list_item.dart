import 'package:flutter/material.dart';

class CardListItem extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  const CardListItem({
    super.key,
    required this.text,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 80,
        child: Card(
          color: backgroundColor,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
