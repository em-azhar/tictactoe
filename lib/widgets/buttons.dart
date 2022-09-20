import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Buttons extends StatelessWidget {
  final String value;
  final VoidCallback? onPressed;

  const Buttons({super.key, required this.value, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152,
      width: 112,
      child: CupertinoButton(
        disabledColor: Colors.transparent,
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        color: Colors.transparent,
        child: Text(
          value,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
