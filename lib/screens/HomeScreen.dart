import 'package:dailyapp/themes/UserProfileStyle.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 0,
            right: 0,
            child: Image.asset('assets/images/layout/layout-1.png')),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      child: Image.asset('assets/images/user/avatar.png'),
                      height: 50,
                    ),
                  ),
                  SizedBox(width: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, ',
                        style: TextStyle(
                          fontFamily: 'CM Sans Serif',
                          fontSize: 17.0,
                          height: 1.5,
                        ),
                      ),
                      Text(
                        'Bagaskara',
                        style: userNameStyle,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
