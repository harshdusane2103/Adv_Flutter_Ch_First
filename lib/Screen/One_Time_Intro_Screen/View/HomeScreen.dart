import 'package:adv_fullter_ch1/Utils/color.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(


          centerTitle: true,
          title: Text('Home Screen',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
        ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150,),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('asstes/image/harsh.jpg'),
            ),
            SizedBox(height: 20,),
            Text('HARSH DUSANE',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 36),)
          ],
        ),
      ),
    );
  }
}
