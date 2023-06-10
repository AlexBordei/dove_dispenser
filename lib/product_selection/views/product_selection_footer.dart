import 'package:flutter/material.dart';

import '../../components/next_button.dart';

class ProductSelectionFooter extends StatelessWidget {
  const ProductSelectionFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      decoration: BoxDecoration(
        color: Colors.white, // adjust color as needed
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, -4), // changes position of shadow
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 19,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProductSelectionSelectedProduct(),
            NextButton(),
          ],
        ),
      ),
    );
  }
}

class ProductSelectionSelectedProduct extends StatelessWidget {
  const ProductSelectionSelectedProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 19,
        ),
        Image.asset('assets/img/product_selection.png'),
        const SizedBox(
          width: 19,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.start, // Adjust as per your need
          children: <Widget>[
            Text(
              "Nourishing Secrets Cool", // Insert your text here
              style: TextStyle(
                color: Color(0xff79797A),
                fontSize: 24.0,
                height: 28.0 / 24.0, // line height as a ratio to the font size
                fontWeight: FontWeight.w400,
                fontFamily:
                    'Arial', // ensure you've added Arial font in your assets
              ),
            ),
            Text(
              "Moisture Shampoo", // Insert your text here
              style: TextStyle(
                color: Color(0xff79797A),
                fontSize: 24.0,
                height: 28.0 / 24.0, // line height as a ratio to the font size
                fontWeight: FontWeight.w400,
                fontFamily:
                    'Arial', // ensure you've added Arial font in your assets
              ),
            ),
          ],
        ),
      ],
    );
  }
}
