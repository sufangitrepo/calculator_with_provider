import 'package:calculator/logics/calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ButtonWidget extends StatelessWidget {
  final double width;
  final double height;

  const ButtonWidget({required this.height,required this.width,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cal = context.read<Calculator>();
    return Container(
      width: width,
        height: height,
        child: LayoutBuilder(
          builder: (context,constraint) {
            double width = constraint.maxWidth;
            double height  = constraint.maxHeight;
            return Column(
              children: [

                //First Row .............

                buttonRow(height*.2,width,
                  Text('C',style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('%',style: Theme.of(context).textTheme.headline6,),
                  Icon(Icons.backspace_outlined,color: Colors.black,size: 20,),
                 ImageIcon(AssetImage('assets/images/divide.png'),size: 17),
                  [
                        cal.btnClear,
                        cal.btnModulas,
                        cal.btnBackSpace,
                        cal.btnDivide,
                  ]
                ),
                //Second Row ................

                buttonRow(height*.2,width,
                    Text('7',style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('8',style: Theme.of(context).textTheme.headline6,),
                    Text('9',style: Theme.of(context).textTheme.headline6,),
                    Icon(Icons.clear,color: Colors.black,size: 20,),

                    [
                          cal.btnSeven,
                          cal.btnEight,
                          cal.btnNine,
                          cal.btnMultiply,
                    ]
                ),

                //Third Row ..............

            buttonRow(height*.2,width,
                Text('4',style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                Text('5',style: Theme.of(context).textTheme.headline6,),
                Text('6',style: Theme.of(context).textTheme.headline6,),
                Icon(Icons.remove,color: Colors.black,size: 20,),
             [
            cal.btnFour,
            cal.btnFive,
            cal.btnSix,
            cal.btnMinus,
            ]
            ),
                //Fourth Row............


            buttonRow(height*.2,width,
            Text('1',style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black,fontSize: 18,),),
            Text('2',style: Theme.of(context).textTheme.headline6,),
            Text('3',style: Theme.of(context).textTheme.headline6,),
                Icon(Icons.add,color: Colors.black,size: 20,),
                [
            cal.btnOne,
            cal.btnTwo,
            cal.btnThree,
            cal.btnPlus,
            ]
            ),

            //Fifth Row............

    buttonRow(height*.2,width,
    Text('00',style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black,fontSize: 18,),),
    Text('0',style: Theme.of(context).textTheme.headline6,),
    Text('.',style: Theme.of(context).textTheme.headline6,),
    ImageIcon(AssetImage('assets/images/equal.png'),size: 17),
    [
    cal.btnDoubleZero,
    cal.btnZero,
    cal.btnFloat,
    cal.btnEqual,
    ]
    ),
   ]);
            }
        ),
    );
  }

  Widget buttonRow(double height , double width,Widget first , Widget second , Widget third ,Widget fourth,List<VoidCallback> list ){
    return LayoutBuilder(
        builder: (context,contraint) {
          return Container(
            padding: EdgeInsets.only(top: 10),
            width: width,
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                   CalcButton(context,first,list[0]),
                   CalcButton(context,second,list[1]),
                   CalcButton(context,third,list[2]),
                   CalcButton(context,fourth,list[3]),
              ],
            ),
          );
        }
    );
  }
  Widget CalcButton(BuildContext context,Widget child,VoidCallback callback){
    return Container(
      decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(offset: Offset(-3, -3),
              color: Colors.brown.shade50,blurRadius: 5,),
            BoxShadow(offset: Offset(3, 3),color: Colors.black12,blurRadius: 5,),

          ]
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
            highlightColor: Colors.blue.withOpacity(.4),
            splashColor: Colors.black26,
            customBorder:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            onTap: callback,
            child: Container(
              height: 70,width: 70,
              child: Center(child:child
              ),
            ),
        ),
      ),
    );
  }
}


