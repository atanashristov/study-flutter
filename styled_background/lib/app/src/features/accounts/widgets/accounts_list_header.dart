import 'package:flutter/material.dart';

class AccountListHeader extends StatelessWidget {
  const AccountListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Accounts',
              style: TextStyle(fontSize: 34),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
