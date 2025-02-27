import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentCardSummary extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  PaymentCardSummary({super.key, required this.formKey, required this.autovalidateMode});

  @override
  State<PaymentCardSummary> createState() => _PaymentCardSummaryState();
}

class _PaymentCardSummaryState extends State<PaymentCardSummary> {
  String cardNumber = '', expiryDate = '', cvvCode = '', cardHolderName = '';
  bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (CreditCardBrand) {},
        ),
        CreditCardForm(
          autovalidateMode:widget.autovalidateMode ,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (CreditCardModel) {
            cardNumber = CreditCardModel.cardNumber;
            expiryDate = CreditCardModel.expiryDate;
            cardHolderName = CreditCardModel.cardHolderName;
            cvvCode = CreditCardModel.cvvCode;
            showBackView = CreditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
