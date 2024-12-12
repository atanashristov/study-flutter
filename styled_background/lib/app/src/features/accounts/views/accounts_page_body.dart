import 'package:flutter/material.dart';
import 'package:styled_background/app/app.dart';

class AccountsPageBody extends StatelessWidget {
  const AccountsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          clipBehavior: Clip.hardEdge,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 8),
                    const AccountListHeader(),
                    const SizedBox(height: 24),
                    const CardAd(),
                    AccountsList(),
                    const CardAd(),
                    const ConfigurationCard(),
                    const SizedBox(height: 2048),
                  ],
                )),
          ),
        );
      },
    );
  }
}
