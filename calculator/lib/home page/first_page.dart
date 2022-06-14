
import 'package:calculator/home%20page/buttons_widget.dart';
import 'package:calculator/home%20page/data_area.dart';
import 'package:calculator/logics/calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var calc = context.read<Calculator>();
    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height-85;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
            DataArea(height: height*.3, width: width),
            ButtonWidget(height: height*.7, width: width)
        ],
      ),

    );
  }
}
