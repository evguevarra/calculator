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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: [
              CalcuButtons(text: "1"),
            ],
          ),
        ],
      ),
    );
  }
}
