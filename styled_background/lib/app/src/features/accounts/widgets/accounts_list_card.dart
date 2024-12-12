import 'package:flutter/material.dart';

class AccountsListCard extends StatelessWidget {
  final String accountName;

  const AccountsListCard({
    super.key,
    required this.accountName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        child: Text(accountName),
      ),
    );
  }
}
