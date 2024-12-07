import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Background Image'),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Accounts'),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Profile'),
        ]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.black,
              child: const Text(
                'This is some marketing content',
                style: TextStyle(color: Colors.white, fontSize: 8),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.pink.shade50,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset('assets/images/MobileBackgroundImage.png'),
                    ),
                    const AccountsListBody(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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
                    const AccountListHeader(),
                    const SizedBox(height: 24),
                    const MarketingCard(),
                    AccountsListView(),
                    const MarketingCard(),
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

class MarketingCard extends StatelessWidget {
  const MarketingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: CardItem(
        text: 'Marketing Card',
        backgroundColor: Colors.amber.shade100,
      ),
    );
  }
}

class AccountsListView extends StatelessWidget {
  final List<Widget> listItems = [];

  AccountsListView({super.key}) {
    for (var i = 0; i < 3; i++) {
      listItems.add(
        CardItem(
          text: 'Account $i+1',
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
