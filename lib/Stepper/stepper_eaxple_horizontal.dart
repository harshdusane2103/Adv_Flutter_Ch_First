import 'package:flutter/material.dart';
import 'package:adv_fullter_ch1/Utils/global.dart';

class stephorscreen extends StatefulWidget {
  const stephorscreen({super.key});


  @override
  State<stephorscreen> createState() => _stephorscreenState();
}

class _stephorscreenState extends State<stephorscreen> {

  continueStep(){
    if(currntStep<2)
    {
      setState(() {
        currntStep=currntStep+1;
      });
    }
  }
  cancelStep(){
    if(currntStep>0)
    {
      setState(() {
        currntStep=currntStep-1;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Flutter Stepper Demo 2",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stepper(
        type: StepperType.horizontal,
          currentStep:currntStep ,

          onStepContinue: continueStep,
          onStepCancel: cancelStep,


          steps: [
            Step(
                title: Text('Account'),
                content: TextFormField(
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2, color: Colors.purple),
                  ),
                  label: Text('Accoount Number'),
                ),),

            ),
            Step(
                title: Text('Address'),
              content: TextFormField(
                minLines: 1,
                maxLines: 10,
                decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2, color: Colors.purple),
                  ),
                  label: Text('Address'),
                ),),
            ),
            Step(
                title: Text('Mobile Number'),
              content: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2, color: Colors.purple),
                  ),
                  label: Text('Moblie Number'),
                ),),
              ),
          ]),

    );
  }
}
