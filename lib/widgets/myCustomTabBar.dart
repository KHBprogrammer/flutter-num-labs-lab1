import 'package:flutter/material.dart';
import 'package:lab1/widgets/myCardIncoming.dart';
import 'myCard.dart';

class myCustomTabBar extends StatefulWidget {
  @override
  _myCustomTabBarState createState() => _myCustomTabBarState();
}

class _myCustomTabBarState extends State<myCustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Tab bar',
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 45,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color.fromARGB(123, 224, 224, 224),
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Color.fromARGB(70, 0, 0, 0),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Шилжүүлэг',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Төлбөрүүд',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  Center(
                    child: Column(
                      children: <Widget>[
                        ...(data.map((item) => myCard(
                              src: item['src'],
                              title: item['title'],
                              desc: item['desc'],
                              price: item['price'],
                            ))),
                      ],
                    ),
                  ),

                  // second tab bar view widget
                  Center(
                    child: Column(
                      children: <Widget>[
                        ...(data.map(
                          (item) => myCardIncoming(
                            src: item['src'],
                            title: item['title'],
                            desc: item['desc'],
                            price: item['price'],
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
