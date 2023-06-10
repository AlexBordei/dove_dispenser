import 'package:flutter/material.dart';

class FLDevBtn extends StatefulWidget {
  final VoidCallback? onPressed;
  final double? height;
  final double? width;

  const FLDevBtn({
    super.key,
    this.child,
    this.onPressed,
    this.height,
    this.width,
  });

  final Widget? child;

  @override
  State<FLDevBtn> createState() => _FLDevBtnState();
}

class _FLDevBtnState extends State<FLDevBtn> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails otd) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (TapUpDetails otd) {
        setState(() {
          isPressed = false;
        });
        widget.onPressed != null ? widget.onPressed!() : null;
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: SizedBox(
        height: widget.height ?? MediaQuery.of(context).size.height,
        width: widget.width ?? MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:
                !isPressed ? const Color(0xFF184688) : const Color(0xFFBC903E),
          ),
          child: Center(
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
