import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: HDlight,

      home: Scaffold(
        body: Column(
         
          children: [
            Container(
              height: h,
              width: w,
              child: Column
                (
                children: [
                  SizedBox(height: 180,),
                  Text('Yo Man !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36),),
                  SizedBox(height: 20,),
                  Text('It\' s a Simple exmple of ',style: TextStyle(fontSize: 20),),
                  Text('dark theme ',style: TextStyle(fontSize: 20),),
                  SizedBox(height: 80,),
                  InkWell(
                    onTap: ()
                    {
                      setState(() {
                        HDlight=ThemeData.light();
                      });
                    },
                    child: Container(
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Center(child: Text('Light Icon',style: TextStyle(color: Colors.black,fontSize: 24),)),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: ()
                    {
                      setState(() {
                        HDlight=ThemeData.dark();
                      });

                    },
                    child: Container(
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Center(child: Text('Dark Icon',style: TextStyle(color: Colors.black,fontSize: 24),)),
                    ),
                  )
                ],
              ),
            )
           
          ],
        ),
      ),
    );
  }
}

var HDlight=ThemeData.light();