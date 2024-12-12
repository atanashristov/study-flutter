import 'package:flutter/material.dart';
import 'package:styled_background/app/app.dart';

class AccountsList extends StatelessWidget {
  final List<Widget> listItems = [];

  AccountsList({super.key}) {
    for (var i = 0; i < 4; i++) {
      listItems.add(
        CardListItem(
          text: 'This is account ${i + 1}',
          backgroundColor: Colors.tealAccent.shade100,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listItems.length,
      primary: false,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: listItems[index],
        );
      },
    );
  }
}
