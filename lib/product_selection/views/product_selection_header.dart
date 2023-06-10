import 'package:flutter/material.dart';

class ProductSelectionHeader extends StatelessWidget {
  const ProductSelectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // adjust color as needed
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      height: 128,
      child: const Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 99, right: 99),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProductSelectionCircle(
              active: true,
              label: 'Scent',
            ),
            ProductSelectionSeparator(),
            ProductSelectionCircle(
              label: 'Size',
            ),
            ProductSelectionSeparator(),
            ProductSelectionCircle(
              label: 'Confirm',
            ),
            ProductSelectionSeparator(),
            ProductSelectionCircle(
              label: 'Pay',
            ),
          ],
        ),
      ),
    );
  }
}

class ProductSelectionSeparator extends StatelessWidget {
  const ProductSelectionSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 8,
          child: Center(
            child: Container(
              width: 238.0,
              height: 11.0,
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(9.0),
              ),
            ),
          ),
        ),
        const Expanded(
          flex: 4,
          child: SizedBox(),
        )
      ],
    );
  }
}

class ProductSelectionCircle extends StatelessWidget {
  final bool active;
  final String? label;
  const ProductSelectionCircle({super.key, this.active = false, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 8,
          child: Container(
            width: 36.0,
            height: 36.0,
            decoration: BoxDecoration(
              color: active ? Colors.white : Colors.transparent,
              border: Border.all(
                color: active ? const Color(0xff184688) : Colors.transparent,
                width: 1.0,
              ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Container(
                width: 30,
                decoration: BoxDecoration(
                  color: active
                      ? const Color(0xff184688)
                      : const Color(0xFFD9D9D9),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            label ?? '',
            style: TextStyle(
              color: active ? const Color(0xff184688) : const Color(0xFFD9D9D9),
              fontSize: 24.0,
              height: 28.0 / 24.0, // line height as a ratio to the font size
              fontWeight: FontWeight.w700,
              fontFamily:
                  'Arial', // ensure you've added Arial font in your assets
            ),
          ),
        )
      ],
    );
  }
}
