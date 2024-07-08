

import 'package:adv_fullter_ch1/Stepper/stepper_eaxple.dart';
import 'package:adv_fullter_ch1/Stepper/stepper_eaxple_horizontal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    routes: {
        '/':(context)=>StepperScreen(),
      '/hor':(context)=>stephorscreen(),

    },
    );
  }
}

