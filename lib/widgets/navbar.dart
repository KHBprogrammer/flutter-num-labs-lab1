import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text('I am navbar screen'),
    // );
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFffffff),
        selectedItemColor: Color(0xFF488e89),
        unselectedItemColor: Color.fromARGB(255, 194, 177, 177),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home Page',
            icon: InkWell(
              child: Icon(Icons.home_outlined),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ),
          BottomNavigationBarItem(
            label: 'Growth Page',
            icon: InkWell(
              child: Icon(Icons.signal_cellular_alt_rounded),
              onTap: () {
                Navigator.pushNamed(context, '/Growth');
              },
            ),
          ),
          BottomNavigationBarItem(
            label: 'Wallet Page',
            icon: InkWell(
              child: Icon(Icons.account_balance_wallet_outlined),
              onTap: () {
                Navigator.pushNamed(context, '/cardInfo');
              },
            ),
          ),
          BottomNavigationBarItem(
            label: 'User Page',
            icon: InkWell(
              child: Icon(Icons.person_outlined),
              onTap: () {
                Navigator.pushNamed(context, '/User');
              },
            ),
          ),
        ],
      ),
    );
  }
}
