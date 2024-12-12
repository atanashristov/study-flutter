import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final String appBarTitle;
  final Widget page;
  const AppScaffold({
    required this.appBarTitle,
    required this.page,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        forceMaterialTransparency: true,
      ),
      body: page,
    );
  }
}
