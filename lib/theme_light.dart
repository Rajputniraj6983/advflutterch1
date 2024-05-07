import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:advflutterch1/theme_dark.dart';
import 'package:advflutterch1/theme_light.dart';

Widget light_Theme({required themeapp})
{
  return CupertinoButton( onPressed: ()
  {
    themeapp();
    isDark = true;
  },
    child: Container(
      height: 100,width: double.infinity,alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: (isDark) ? Colors.red : Colors.amber,
        borderRadius: BorderRadius.circular(15)),
      child: Text(
        'Light Theme',style: TextStyle(fontSize: 25,color: isDark ? Colors.white : Colors.black),
      ),
    ),
  );
}