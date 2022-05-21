import 'package:flutter/material.dart';

class myCard extends StatelessWidget {
  const myCard({
    Key? key,
    required this.src,
    required this.title,
    required this.desc,
    required this.price,
  }) : super(key: key);

  final String src;
  final String title;
  final String desc;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
        decoration: BoxDecoration(
            // color: Colors.red,
            ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(src, height: 50, width: 50),
                  Container(
                    margin: EdgeInsets.only(left: 9),
                    decoration: BoxDecoration(

                        // color: Colors.yellowAccent,
                        ),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      verticalDirection: VerticalDirection.down,

                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            // backgroundColor: Colors.cyan,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                          // decoration: BoxDecoration(
                          //   border: Border.all(color: Colors.black, width: 5),
                          //   borderRadius: BorderRadius.all(
                          //     Radius.circular(5),
                          //   ),
                          // ),
                          child: Text(
                            desc,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 102, 102, 102),
                              decoration: TextDecoration.none,
                              // backgroundColor: Colors.cyan,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  price,
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF25A969),
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.right,
                ),
              )
            ]));
  }
}
