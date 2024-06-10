import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pratice extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("pratice page"),
      ),
      body: GridView.count(crossAxisCount: 3,
      children: [
        Container(color: Colors.red,),
        Container(color: Colors.green,),
        Container(color: Colors.blue,),
        Container(color: Colors.orange,),
        Container(color: Colors.purple,),
        Container(color: Colors.yellowAccent,),
        Container(color: Colors.brown,),
        Container(color: Colors.teal,),
        Container(color: Colors.black,),


      ],)
    );
  }

}