


import 'package:flutter/material.dart';

class Calculator extends ChangeNotifier{
  String data='';
  String ans  = '';

  void btnOne(){
    data+='1';
    notifyListeners();
  }

  void btnFloat(){
    var characters = data.characters;
    var list = characters.toList();
    if(list.isNotEmpty && !list.contains('.')){
      data+='.';
      notifyListeners();
    }
  }

  void btnTwo(){
    data+='2';
    notifyListeners();
  }

  void btnThree(){
    data+='3';
    notifyListeners();
  }

  void btnFour(){
    data+='4';
    notifyListeners();
  }

  void btnFive(){
    data+='5';
    notifyListeners();
  }

  void btnSix(){
    data+='6';
    notifyListeners();
  }

  void btnSeven(){
    data+='7';
    notifyListeners();
  }

  void btnEight(){
    data+='8';
    notifyListeners();
  }

  void btnNine(){
    data+='9';
    notifyListeners();
  }

  void btnZero(){
    var characters =data.characters;
    var list  = characters.toList();
    if(list.isNotEmpty){
      data+='0';
      notifyListeners();
    }
  }

  void btnDoubleZero(){
    var characters =data.characters;
    var list  = characters.toList();
    if(list.isNotEmpty){
      data+='00';
      notifyListeners();
    }

  }

  void btnClear(){
    data='';
    notifyListeners();
  }

  void btnBackSpace()
  {
    var characters =data.characters;
    var list  = characters.toList();
    if(list.length>0) {
      list.removeLast();
      data = '';
      list.every((element) {
        data+=element;
        return true;
      });
      notifyListeners();
    }
    }
  void btnPlus(){
    if(data.isNotEmpty
        && !data.contains('+')
        && !data.contains('-')
        && !data.contains('/')
        && !data.contains('X')
        && !data.contains('%') ){
      data+='+';
      notifyListeners();
    }
  }

  void btnMinus(){
    if(data.isNotEmpty&& !data.contains('+')
        && !data.contains('-')
        && !data.contains('/')
        && !data.contains('X')
        && !data.contains('%')){
      data+='-';
      notifyListeners();
    }
  }

  void btnMultiply(){
    if(data.isNotEmpty && !data.contains('+')
        && !data.contains('-')
        && !data.contains('/')
        && !data.contains('X')
        && !data.contains('%')){
      data+='X';
      notifyListeners();
    }
  }

  void btnDivide(){
    if(data.isNotEmpty && !data.contains('+')
        && !data.contains('-')
        && !data.contains('/')
        && !data.contains('X')
        && !data.contains('%')){
      data+='/';
      notifyListeners();
    }
  }

  void btnModulas(){
    if(data.isNotEmpty && !data.contains('+')
    && !data.contains('-')
    && !data.contains('/')
    && !data.contains('X')
    && !data.contains('%')){
      data+='%';
      notifyListeners();
    }
  }

  void btnEqual(){
    if(data.isNotEmpty){
      if(data.contains('X') && !data.endsWith('X')){
        //product
        multiply(data);
      }
      else if(data.contains('+') && !data.endsWith('+')){
      //Addition
        addtion(data);
      }

      else if(data.contains('-') && !data.endsWith('-') ){
        //substraction
        substraction(data);
      }
      else if(data.contains('/') && !data.endsWith('/')){
        //Division
        divide(data);
      }
      else if(data.contains('%') && !data.endsWith('%')){
        //Addition
        percentage(data);
      }
    }

  }


  //Addition
 void addtion(String data){
     int index = data.indexOf('+');
     String first = data.substring(0,index);
     String second = data.substring(index+1,data.length);
    try {
      double firNum = double.parse(first);
      double secNum = double.parse(second);
      double sum = firNum+secNum;
      this.data = sum.toString();
      ans = data;
      notifyListeners();
    }
    catch (e){
    }

  }
  void substraction(String data){
    int index = data.indexOf('-');
    String first = data.substring(0,index);
    String second = data.substring(index+1,data.length);
    try {
      double firNum = double.parse(first);
      double secNum = double.parse(second);
      double sum = firNum-secNum;
      this.data = sum.toString();
      ans = data;
      notifyListeners();
    }
    catch (e){
    }

  }
  void multiply(String data){
    int index = data.indexOf('X');
    String first = data.substring(0,index);
    String second = data.substring(index+1,data.length);
    try {
      double firNum = double.parse(first);
      double secNum = double.parse(second);
      double res = firNum*secNum;
      this.data = res.toString();
      ans = data;
      notifyListeners();
    }
    catch (e){
    }

  }
  void divide(String data){
    int index = data.indexOf('/');
    String first = data.substring(0,index);
    String second = data.substring(index+1,data.length);
    try {
      double firNum = double.parse(first);
      double secNum = double.parse(second);
      double res = firNum/secNum;
      this.data = res.toString();
      ans = data;
      notifyListeners();
    }
    catch (e){
    }

  }
  void percentage(String data){
    int index = data.indexOf('%');
    String first = data.substring(0,index);
    String second = data.substring(index+1,data.length);
    try {
      double firNum = double.parse(first);
      double secNum = double.parse(second);
      double sum = (firNum/100)*secNum;
      this.data = sum.toString();
      ans = data;
      notifyListeners();
    }
    catch (e){
    }

  }











}