import 'package:flutter/material.dart';

class iconCard extends StatelessWidget {
  const iconCard({
    Key? key,
    required this.src,
    required this.title,
  }) : super(key: key);

  void _showSnack() => {
        debugPrint('movieTitle: waa')
        // ScaffoldMessenger.of().showSnackBar(const SnackBar(content: Text('Hello SnackBar'),),),
      };

  final String src;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 5, 20),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: BoxDecoration(
          // color: Colors.amber,
          ),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(5)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        // ElevatedButton.styleFrom(
        //   padding: EdgeInsets.all(5),
        // ),
        onPressed: _showSnack,
        child: Column(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(src),
                  fit: BoxFit.cover,

                  // colorFilter: ColorFilter.mode(
                  //     Color.fromARGB(255, 255, 255, 255), BlendMode.xor),
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 21,
                decoration: TextDecoration.none,
              ),
            )
          ],
        ),
      ),
    );
  }
}
