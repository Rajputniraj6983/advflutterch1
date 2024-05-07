import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
       home: Scaffold(
         body: Container(
           height: 500,width: 400,
           child: Card(
             child: Column(
               children: [
                 themetext(),
                 light-Theme()
               ],
             ),
           ),
         ),
       ),
    );
  }
}
