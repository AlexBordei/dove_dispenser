import 'package:dove_dispenser/components/f_l_dev_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const StartPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/img/logo.png',
            width: 400,
            height: 226,
          ),
          const Text(
            'Click to Begin',
            style: TextStyle(
              color: Color(0xff184688),
              fontSize: 96.0,
              height: 110.0 /
                  96.0, // Flutter defines line-height as a multiplier on font-size
              fontWeight: FontWeight.w700,
              fontFamily:
                  'Arial', // ensure you've added Arial font in your assets
            ),
          ),
          const FLDevBtn(
            width: 559,
            height: 164,
            child: Text(
              'Start',
              style: TextStyle(
                color: Colors.white,
                fontSize: 64.0,
                height: 90.0 / 64.0, // line height as a ratio to the font size
                fontWeight: FontWeight.w900,
                fontFamily:
                    'Arial', // ensure you've added Arial font in your assets
              ),
            ),
          ),
          const Text(
            'Click here to learn more',
            style: TextStyle(
              color: Color(0xffDB9E3B),
              fontSize: 36.0,
              height: 41.0 / 36.0, // line height as a ratio to the font size
              fontWeight: FontWeight.w400,
              fontFamily:
                  'Arial', // ensure you've added Arial font in your assets
            ),
          )
        ],
      ),
    ));
  }
}
