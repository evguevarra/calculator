import 'package:calculator_app/widgets/value_text.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/widgets/calcu_buttons.dart';
import 'package:math_expressions/math_expressions.dart';

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
  String value = '0';
  String operationText = '';
  int digitCounter = 0;
  String result = '';

  void buttonClick(String textValue) {
    setState(() {
      if (value == '0') {
        value = textValue;
      } else {
        value += textValue;
        // digitCounter++;
        // if (digitCounter == 10) {
        //   value += ('\n$textValue');
        //   digitCounter = 0;
        // }
      }
    });
  }

  void equalButtonClicked(String textValue) {
    setState(() {
      operationText = value;

      operationText = operationText.replaceAll("x", "*");
      operationText = operationText.replaceAll("÷", "/");

      try {
        Parser p = Parser();
        Expression exp = p.parse(operationText);

        ContextModel cm = ContextModel();
        result = '${exp.evaluate(EvaluationType.REAL, cm)}';

        value = result;
      } catch (e) {
        result = "Error";
      }
    });
  }

  void backSpaceClick(String textValue) {
    setState(() {
      value = value.substring(0, value.length - 1);
      if (value == '') {
        value = '0';
      }
    });
  }

  void clearClick(String textValue) {
    setState(() {
      value = '0';
      operationText = '';
    });
  }

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
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text(operationText)],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.60,
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
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                      callback: clearClick,
                    ),
                    CalcuButtons(
                      text: "C",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                      callback: backSpaceClick,
                    ),
                    CalcuButtons(
                      text: "%",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "÷",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                      callback: buttonClick,
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
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "8",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "9",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "x",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                      callback: buttonClick,
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
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "5",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "6",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "-",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                      callback: buttonClick,
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
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "2",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "3",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "+",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: true,
                      callback: buttonClick,
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
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: ".",
                      bgColor: buttonColor,
                      textColor: textNormalColor,
                      isNormalButton: true,
                      callback: buttonClick,
                    ),
                    CalcuButtons(
                      text: "=",
                      bgColor: operatorColor,
                      textColor: textFunctionColor,
                      isNormalButton: false,
                      callback: equalButtonClicked,
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
