import 'package:advflutterch1/theme/views/components/counterscreen.dart';
import 'package:advflutterch1/theme/views/components/dark_theme.dart';
import 'package:advflutterch1/theme/views/components/provider_dart.dart';
import 'package:advflutterch1/theme/views/themescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      builder: (context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeClass.lightTheme,
          darkTheme: ThemeClass.darkTheme,
          themeMode: ThemeMode.system,
           initialRoute: '/',
          routes: {
           '/' : (context) => MainScreen(),
            // 'ThemeClass' : (context) => ThemeClass()
          },

      ),
    );
  }
}

bool press = false;
