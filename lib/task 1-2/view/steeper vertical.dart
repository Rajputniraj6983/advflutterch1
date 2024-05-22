import 'package:flutter/material.dart';

class steepervertical extends StatefulWidget {
  const steepervertical({super.key});

  @override
  State<steepervertical> createState() => _steeperverticalState();
}

class _steeperverticalState extends State<steepervertical> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Text(
              "Flutter Steeper Demo",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            centerTitle: true,
          ),
          body: Stepper(
            onStepTapped: (value) {
              setState(() {
                Steppervalue.StepperIndex = value;
              });
            },
            currentStep: Steppervalue.StepperIndex,
            onStepCancel: () {
              setState(() {
                if (Steppervalue.StepperIndex == 2) {
                  Steppervalue.StepperIndex--;
                } else {
                  Steppervalue.StepperIndex = 0;
                }
              });
            },
            onStepContinue: () {
              setState(() {
                if (Steppervalue.StepperIndex ==
                    Steppervalue.StepperIndexStop) {
                  Steppervalue.StepperIndex++;
                } else {
                  Steppervalue.StepperIndex++;
                }
              });
            },
            stepIconBuilder: (stepIndex, stepState) {
              return CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.done,
                    size: 20,
                    color: Colors.white,
                  ));
            },
            steps: [
              Step(
                  title: Text("Account"),
                  content: TextField(
                    decoration: InputDecoration(hintText: "Account"),
                  )
              ),
              Step(
                  title: Text("Address"),
                  content: TextField(
                    decoration: InputDecoration(hintText: "Address"),
                  )
              ),
              Step(

                  title: Text("Mobile Number"),
                  content: TextField(
                    decoration: InputDecoration(hintText: "Mobile Number"),
                  )
              ),
            ],
          )),
    );
  }
}

bool isDark = false;

class Steppervalue {
  static int StepperIndex = 0;
  static int StepperIndexStop = 2;
}
