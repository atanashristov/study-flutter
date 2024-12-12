import 'package:flutter/material.dart';
import 'package:styled_background/app/app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      routerConfig: appRouterConfig,
      title: 'Styled Background',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade50),
        useMaterial3: true,
      ),
    );
  }
}
