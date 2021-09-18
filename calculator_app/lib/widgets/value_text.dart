import 'package:flutter/material.dart';

class ValueText extends StatefulWidget {
  final String value;
  final Color textFunctionColor;

  const ValueText({
    Key? key,
    required this.value,
    required this.textFunctionColor,
  }) : super(key: key);

  @override
  State<ValueText> createState() => _ValueTextState();
}

class _ValueTextState extends State<ValueText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 45.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              widget.value,
              style: TextStyle(
                fontSize: 60,
                color: widget.textFunctionColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
