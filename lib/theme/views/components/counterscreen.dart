
import 'package:advflutterch1/theme/views/components/provider_dart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          Provider.of<CounterProvider>(context, listen: true).num.toString(),
          style: const TextStyle(fontSize: 60),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Provider.of<CounterProvider>(context,listen: false).increament();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
