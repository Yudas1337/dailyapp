import 'package:dailyapp/components/AssignmentCard.dart';
import 'package:dailyapp/screens/AssignmentScreen.dart';
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
        SafeArea(
          child: Padding(
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
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Activities",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(
                      '26 July 2021',
                      style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text(
                        'see all',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AssignmentScreen()));
                      },
                      style: TextButton.styleFrom(
                        primary: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(17, 153, 142, 1),
                        Color.fromRGBO(56, 239, 125, 1)
                      ])),
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Assignment",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    TextButton(
                      child: Text(
                        'see all',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AssignmentScreen()));
                      },
                      style: TextButton.styleFrom(
                        primary: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (item, index) {
                        return AssignmentCard();
                      }),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
