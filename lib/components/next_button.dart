import 'dart:math';

import 'package:dove_dispenser/components/f_l_dev_btn.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 90,
      child: FLDevBtn(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  "NEXT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    height: 1.15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Arial',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 4,
                child: Transform.rotate(
                  angle: pi,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
