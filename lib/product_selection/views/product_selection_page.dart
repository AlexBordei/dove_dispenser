import 'dart:math';

import 'package:dove_dispenser/product_selection/views/product_selection_footer.dart';
import 'package:dove_dispenser/product_selection/views/product_selection_header.dart';
import 'package:flutter/material.dart';

class ProductSelection extends StatelessWidget {
  const ProductSelection({super.key});
  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const ProductSelection(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ProductSelectionHeader(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Text(
                      "Cancel", // Insert your text here
                      style: TextStyle(
                        color: Color(0xffB70000),
                        fontSize: 32.0,
                        height: 37.0 /
                            32.0, // line height as a ratio to the font size
                        fontWeight: FontWeight.w400,
                        fontFamily:
                            'Arial', // ensure you've added Arial font in your assets
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Text(
                      'Choose your Scent',
                      style: TextStyle(
                        color: Color(0xff184688),
                        fontSize: 48.0,
                        height: 55.0 /
                            48.0, // line height as a ratio to the font size
                        fontWeight: FontWeight.w700,
                        fontFamily:
                            'Arial', // ensure you've added Arial font in your assets
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/img/arrow.png'),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProductSelectionProduct(
                          active: true,
                          image: Image.asset('assets/img/product_1.png'),
                          textLine1: 'Nourishing Secrets Cool',
                          textLine2: 'Moisture Shampoo',
                        ),
                        ProductSelectionProduct(
                          image: Image.asset('assets/img/product_2.png'),
                          textLine1: 'Nourishing Secrets Coconut',
                          textLine2: '& Hydration Shampoo',
                        ),
                      ],
                    )),
                    Transform.rotate(
                      angle: pi,
                      child: Image.asset('assets/img/arrow.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const ProductSelectionFooter(),
        ],
      ),
    );
  }
}

class ProductSelectionProduct extends StatelessWidget {
  final Image image;
  final String? textLine1;
  final String? textLine2;
  final bool active;

  const ProductSelectionProduct({
    super.key,
    required this.image,
    this.textLine1,
    this.textLine2,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: active ? const Color(0xff184688) : Colors.transparent,
          width: 4.0,
        ),
        boxShadow: active
            ? [
                const BoxShadow(
                  color: Colors.white,
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ]
            : [],
      ),
      height: 400,
      width: 323,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(flex: 10, child: image),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    textLine1 ?? '',
                    style: const TextStyle(
                      color: Color(0xff79797A),
                      fontSize: 24.0,
                      height: 28.0 /
                          24.0, // line height as a ratio to the font size
                      fontWeight: FontWeight.w400,
                      fontFamily:
                          'Arial', // ensure you've added Arial font in your assets
                    ),
                  ),
                  Text(
                    textLine2 ?? '',
                    style: const TextStyle(
                      color: Color(0xff79797A),
                      fontSize: 24.0,
                      height: 28.0 /
                          24.0, // line height as a ratio to the font size
                      fontWeight: FontWeight.w400,
                      fontFamily:
                          'Arial', // ensure you've added Arial font in your assets
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
