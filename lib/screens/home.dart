// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:lab1/widgets/myCard.dart';
import '../widgets/iconCard.dart';
import '../widgets/myCustomTabBar.dart';
import '../widgets/navbar.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  List<Map<dynamic, dynamic>> data = [
    {
      'src':
          // 'https://scontent.fuln2-2.fna.fbcdn.net/v/t39.30808-6/271759453_1547983018912814_77933080622819616_n.jpg?_nc_cat=106&ccb=1-6&_nc_sid=730e14&_nc_eui2=AeGwOTy2b3eFrddHlogVKrM-qbIwmisHMhGpsjCaKwcyEREEqNgILPC4umKiroK6suG4W10gqXvKOEgfulmBHjoD&_nc_ohc=43BXbvE42ikAX_nttvj&_nc_ht=scontent.fuln2-2.fna&oh=00_AT_0Cqw85vzEE-iNVbwdBDgThZjOFVx8uQpzPbQ3apwNNQ&oe=6286FBEC',
          'https://scontent.fuln2-2.fna.fbcdn.net/v/t1.6435-9/203781150_591441562245547_8574786471654780205_n.jpg?_nc_cat=111&ccb=1-6&_nc_sid=174925&_nc_eui2=AeETECwPrLattm64L6MAZ8QnxiBvcyObz-fGIG9zI5vP52JX-IqE7VwCB0dw8xaBeEw4xh6xemnPTr3a-IBckmKR&_nc_ohc=xnEZ1iGQ984AX9y4yhF&tn=uDb4mFyeZ_NLA6G4&_nc_ht=scontent.fuln2-2.fna&oh=00_AT-KCzDL8nfEwItgChiFEQmTb8AK0xSr4rR5R8nXgriq9Q&oe=62A20E75',
      'title': 'Munkh Munkh',
      'desc': 'Labiin hamt suudag huuhed',
      'price': '\$1,024'
    },
    {
      'src':
          'https://scontent.fuln2-2.fna.fbcdn.net/v/t1.6435-9/126349704_1340270939641735_1450883017744520456_n.jpg?_nc_cat=107&ccb=1-6&_nc_sid=174925&_nc_eui2=AeHOKZ7HqBRI4RkmoP5XUpLRzlfAJ_8E2DrOV8An_wTYOuscOrXoAW4agm4SGksx8PXg7Ut3abMTIqnmm6GcrKqH&_nc_ohc=APKWho6NDXEAX8pnCs5&_nc_ht=scontent.fuln2-2.fna&oh=00_AT9yLw0EWfdt0_dn-AoFDs0SHzb3MV0GCGBsH9HcUOzOGg&oe=62A89F1A',
      'title': 'Khishigbayar bal',
      'desc': 'I"s mee !!!!',
      'price': '\$100'
    },
    {
      'src':
          'https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_0.jpg',
      'title': 'Elisabeth Smith',
      'desc': 'Description 1',
      'price': '\$100'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 6, 169, 169),
        backgroundBlendMode: BlendMode.softLight,
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
            decoration: BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '<',
                  style: TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Wallet',
                  style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Notif',
                  style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: const EdgeInsets.fromLTRB(26, 30, 26, 0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                    bottom: Radius.circular(0),
                  ),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        iconCard(
                          src:
                              'https://scontent.fuln2-2.fna.fbcdn.net/v/t1.15752-9/279500926_1138853893630062_8470671787655398466_n.png?_nc_cat=108&ccb=1-6&_nc_sid=ae9488&_nc_eui2=AeFKkDctQrt-Tl-5T_-o5W7Co8uMhHflVg6jy4yEd-VWDtUtebPruC3JzDfikZAccMvXTmH6O8dAA1T38xYAgxIp&_nc_ohc=q7EMX58ld4EAX9A2N9M&_nc_ht=scontent.fuln2-2.fna&oh=03_AVKYEw0Ukn8fQxZTURNPgmPJK5PM2C4P9Rf_HNm1-x9N8g&oe=62A21D9F',
                          title: 'Add',
                        ),
                        iconCard(
                          src:
                              'https://scontent.fuln2-2.fna.fbcdn.net/v/t1.15752-9/280467964_1374057323004371_1749285824021821658_n.png?_nc_cat=107&ccb=1-6&_nc_sid=ae9488&_nc_eui2=AeG0D9YqG0UpRk_1XCYHRxyW5ZvhX90wcxHlm-Ff3TBzEeHAkjyrcHkyzmsgYJ55SphvlPO7qBN4Pa1PxBZlJKfO&_nc_ohc=v8E5DKOn91oAX-yXMPa&tn=uDb4mFyeZ_NLA6G4&_nc_ht=scontent.fuln2-2.fna&oh=03_AVKgIlWPckb3ZCPu3-vp4MgfMtld7mSObxNG8wGwUd7e9g&oe=62A40502',
                          title: 'Pay',
                        ),
                        iconCard(
                          src:
                              'https://scontent.fuln2-2.fna.fbcdn.net/v/t1.15752-9/279738865_366863508592836_1959614603205095679_n.png?_nc_cat=109&ccb=1-6&_nc_sid=ae9488&_nc_eui2=AeErBblhnXl6c44WmtJ13uaLHC_xKqYLtXQcL_Eqpgu1dCKs7vjb8EBsAeerAF73cul6y1RerusMpWVhWB2f2bew&_nc_ohc=Qt0VbY40894AX9BTQlX&_nc_ht=scontent.fuln2-2.fna&oh=03_AVLRvmfT1X40vgHUKtReRxkJF--8HSO8UZrSSPnDX7wFJg&oe=62A39263',
                          title: 'Send',
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        child: myCustomTabBar(),
                      ),
                    ),
                  ],
                )),
          ),
          Container(
            height: 51,
            color: Colors.cyan,
            child: navbar(),
          ),
        ],
      ),
    );
  }
}
