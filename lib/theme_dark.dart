import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget dark_Theme({required themeapp})
{
  return CupertinoButton(onPressed: ()
  {
    themeapp();
    var isDark = false;
  },
    child: Container(
      height: 100,width: double.infinity,
      alignment: Alignment.center,margin: EdgeInsets.symmetric(horizontal: 10),
       decoration: BoxDecoration(
         color: (!isdark) ? Colors.red : Colors.amber,
         borderRadius: BorderRadius.circular(20)
       ),
      child: Text('Dark Theme'style: TextStyle(fontSize: 20,color: isDark ? Colors.white : Colors.black),),
    )
  );
}