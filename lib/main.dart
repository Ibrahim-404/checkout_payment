import 'package:flutter/material.dart';

import 'feature/mycard/view/persentation/screens/my_card.dart';
void main(){
  runApp(CheckoutPayment());
}
class CheckoutPayment extends StatelessWidget {
  const CheckoutPayment ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyCard() ,
    );
  }
}
