import 'package:flutter/material.dart';

class CalcuButtons extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final bool isNormalButton;
  final Function callback;

  const CalcuButtons({
    Key? key,
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.isNormalButton,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: isNormalButton ? 65 : 140,
      child: ElevatedButton(
        onPressed: () {
          callback(text);
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: isNormalButton ? CircleBorder() : StadiumBorder(),
          primary: bgColor,

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
