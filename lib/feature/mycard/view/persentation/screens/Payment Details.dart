import 'package:checkout_payment/feature/mycard/view/persentation/screens/components/CustomAppBar.dart';
import 'package:checkout_payment/feature/mycard/view/persentation/screens/thank_you_screen_payment_details.dart';
import 'package:flutter/material.dart';
import 'components/CustomElevateButton.dart';
import 'components/PaymentCardSummary.dart';
import 'components/generateCategoryOfPaymentMethod.dart';

class PaymentDetails extends StatelessWidget {
  PaymentDetails({super.key});

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: generateCategoryOfPaymentMethod()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            // GenerateVisa(),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: PaymentCardSummary(
                formKey: formKey,
                autovalidateMode: autovalidateMode,
              ),
            ),
            SliverFillRemaining(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomElevateButton(
                  buttonName: "pay",
                  click: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThankYouScreenPaymentDetails(),
                        ),
                      );
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
