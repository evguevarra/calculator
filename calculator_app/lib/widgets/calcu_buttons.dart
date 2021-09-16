import 'package:flutter/material.dart';

class CalcuButtons extends StatelessWidget {
  final String text;
  const CalcuButtons({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),

          // shape:MaterialStateProperty.all<RoundedRectangleBorder>(
          //   RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(50),
          //   ),
          // ),
        ),
      ),
    );
  }
}
