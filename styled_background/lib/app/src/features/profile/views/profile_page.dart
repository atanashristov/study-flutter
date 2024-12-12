import 'package:flutter/material.dart';
import 'package:styled_background/app/app.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: 'Styled Background - Profile',
      page: Expanded(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // https://stackoverflow.com/questions/51513429/how-to-do-rounded-corners-image-in-flutter
              CircleAvatar(
                radius: 120,
                backgroundColor: Colors.brown,
                child: Padding(
                  padding: const EdgeInsets.all(8), // Border radius
                  child: ClipOval(child: Image.asset('assets/images/TonyPortrait.jpg')),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'El Presidente de la República.',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  overflow: TextOverflow.fade,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
