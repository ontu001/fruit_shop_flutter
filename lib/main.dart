import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shop_flutter/home.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Shop',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}