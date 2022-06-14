
import 'package:calculator/logics/calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class DataArea extends StatelessWidget {
  final double width ;
  final double height ;

  const DataArea({required this.height,required this.width,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<Calculator,String>(
      builder: (context, value, child) => Container(
        width: width,
        height: height,
        alignment: Alignment(.8, .8),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset:Offset(-3, -3),
                color: Colors.brown.shade50,
                blurRadius: 5,
              ),
            ]
        ),
        child: Padding(padding: EdgeInsets.all(10),child: Text('$value',style: Theme.of(context).textTheme.headline6,)),
      ) ,
      selector:(context, val)=>val.data ,
    );
  }
}
