import 'package:flutter/material.dart';

class ValueText extends StatelessWidget {
  const ValueText({
    Key? key,
    required this.value,
    required this.textFunctionColor,
  }) : super(key: key);

  final int value;
  final Color textFunctionColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 45.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            value.toString(),
            style: TextStyle(
              fontSize: 60,
              color: textFunctionColor,
            ),
          ),
        ],
      ),
    );
  }
}
