import 'package:flutter/material.dart';

import 'styled_background/styled_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade50),
        useMaterial3: true,
      ),
      home: const AppScaffold(),
    );
  }
}

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styled Background Demo'),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
        BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Accounts'),
        BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Profile'),
      ]),
      body: AccountsPage(),
    );
  }
}

class AccountsPage extends StatelessWidget {
  final config = StyledBackgroundConfig(
    bgColor: Colors.deepPurple[100],
    bgImageOpacity: 0.75,
    // bgImageFileName: 'assets/images/MobileBackgroundImage-120x58.png',
    bgImageFileName: 'assets/images/MobileBackgroundImage-566x270.png',
    // '150px 400px' okay
    // 'auto auto' - TODO
    bgImageSize: 'cover',
    bgImagePosX: 'center',
    bgImagePosY: 'bottom',
  );

  AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = StyledBackgroundModelBuilder().buildFromConfiguration(config);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const HeaderAd(),
        Expanded(
          child: StyledBackgroundWidget(
            model: model,
            child: const AccountsListBody(),
          ),
        )
      ],
    );
  }
}

class AccountsListBody extends StatelessWidget {
  const AccountsListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
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
                    const AdCard(),
                    AccountsListView(),
                    const AdCard(),
                    const SizedBox(height: 2048),
                  ],
                )),
          ),
        );
      },
    );
  }
}

class CardItem extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  const CardItem({
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

class AdCard extends StatelessWidget {
  const AdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: CardItem(
        text: 'This is an ad',
        backgroundColor: Colors.amber.shade100,
      ),
    );
  }
}

class AccountsListView extends StatelessWidget {
  final List<Widget> listItems = [];

  AccountsListView({super.key}) {
    for (var i = 0; i < 4; i++) {
      listItems.add(
        CardItem(
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

class AccountCard extends StatelessWidget {
  final String accountName;

  const AccountCard({
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
