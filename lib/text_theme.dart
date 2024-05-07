import 'package:flutter/material.dart';

themeText(){
  return Padding(padding: const
  EdgeInsets.symmetric(vertical: 10,horizontal: 45),
   child: Column(
     children: [
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 45),
         child: Text('Yo Man',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
       ),
       Text("It's a simple example of a dark theme")
     ],
   ),
  );
}