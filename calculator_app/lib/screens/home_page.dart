import 'package:calculator_app/widgets/value_text.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/widgets/calcu_buttons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color operatorColor = const Color(0xFFEFEBE9).withOpacity(0.3);
  final Color buttonColor = const Color(0x2E2E2E2E);
  final Color textFunctionColor = const Color(0xFFFF9800);
  final Color textNormalColor = Colors.white;
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            child:
                ValueText(value: value, textFunctionColor: textFunctionColor),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.70,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  // first row
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalcuButtons(
                      text: "AC",
                      bgColor: buttonColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "+/-",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "%",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "÷",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                    ),
                  ],
                ),
                Row(
                  // second row
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalcuButtons(
                      text: "7",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "8",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "9",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "x",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                    ),
                  ],
                ),
                Row(
                  // third row
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalcuButtons(
                      text: "4",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "5",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "6",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "-",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                    ),
                  ],
                ),
                Row(
                  // fourth row
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalcuButtons(
                      text: "1",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "2",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "3",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "+",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                    ),
                  ],
                ),
                Row(
                  // fifth row
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalcuButtons(
                      text: "0",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: ".",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                    ),
                    CalcuButtons(
                      text: "=",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
