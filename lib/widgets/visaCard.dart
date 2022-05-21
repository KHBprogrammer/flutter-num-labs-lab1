import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class visaCard extends StatefulWidget {
  visaCard({Key? key}) : super(key: key);

  @override
  State<visaCard> createState() => _visaCardState();
}

class _visaCardState extends State<visaCard> {
  bool back = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {
        setState(() => {back = !back})
      },
      child: Container(
        child: Column(
          children: <Widget>[
            // CreditCardWidget(
            //   cardNumber: '4242 4242 4242 4242',
            //   expiryDate: '12/20\',',
            //   cardHolderName: 'Jhon Doe',
            //   cvvCode: '123',
            //   showBackView: back,
            //   onCreditCardWidgetChange:
            //       (CreditCardBrand) {}, //true when you want to show cvv(back) view
            // ),
            Row(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Card Number',
                    hintText: '1234 5678 9012 3456',
                  ),
                  onChanged: (String val) => {
                    print(val),
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
