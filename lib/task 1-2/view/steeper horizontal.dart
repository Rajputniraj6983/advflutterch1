import 'package:flutter/material.dart';

class steeperHorizontal extends StatefulWidget {
  const steeperHorizontal({super.key});

  @override
  State<steeperHorizontal> createState() => _steeperHorizontalState();
}

class _steeperHorizontalState extends State<steeperHorizontal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: const Text(
              "Flutter Steeper Saple",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          body: SizedBox(
            child: Stepper(
              elevation: 0,
              type: StepperType.horizontal,
              physics: ScrollPhysics(),
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
                return const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.done,
                      size: 18,
                      color: Colors.white,
                    ));
              },
              steps: [
                Step(
                    title: Text("Personal"),
                    content: Column(
                      children: [
                        TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mail_outline_outlined),
                                hintText: 'E-mail',border: OutlineInputBorder()
                            ),
                        ),SizedBox(height: 5),
                        TextFormField(maxLines: 5,
                          decoration:  InputDecoration(
                              prefixIcon: Icon(Icons.home),
                              hintText: 'Address',border: OutlineInputBorder()
                          ),
                        ),SizedBox(height: 5),
                        TextFormField(
                          decoration:  InputDecoration(
                              prefixIcon: Icon(Icons.call),
                              hintText: 'Mobile no',border: OutlineInputBorder()
                          ),
                        ),
                      ],
                    )
                ),
                const Step(
                    title: Text("Contact"),
                    content: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(hintText: "Contact"),
                        ),
                      ],
                    )),
                const Step(
                    title: Text("Upload"),
                    content: TextField(
                      decoration: InputDecoration(hintText: "Upload"),
                    )),
              ],
            ),
          )),
    );
  }
}

bool isDark = false;

class Steppervalue {
  static int StepperIndex = 0;
  static int StepperIndexStop = 2;
}
