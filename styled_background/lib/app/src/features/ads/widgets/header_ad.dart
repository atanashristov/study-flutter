import 'package:flutter/material.dart';

class HeaderAd extends StatelessWidget {
  const HeaderAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(8),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'This is an ad',
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4),
            child: Icon(
              Icons.close,
              color: Colors.white70,
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
