import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/features/payment/credit_card_or_debit.dart';

class AddPayment extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors().myWhite,
      appBar: AppBar(
        title: Text(
          "Payment",
          style: TextStyle(
            color: Appcolors().myDark,
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Appcolors().myDark,
        ),
        backgroundColor: Appcolors().myWhite,
      ),
      body: SafeArea(
        child: Column(
          children: [
            _paymentTools(
              context,
              navigate: CreditCardOrDebit(),
              icon: Icons.credit_card,
              text: "Credit Card Or Debit",
            ),
          ],
        ),
      ),
    );
  }
}

_paymentTools(context,
    {navigate, required IconData icon, required String text}) {
  return TextButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => navigate,
        ),
      );
    },
    child: Row(
      children: [
        Icon(
          icon,
          color: Appcolors().myDark,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyle(
            color: Appcolors().myDark,
          ),
        ),
      ],
    ),
  );
}
