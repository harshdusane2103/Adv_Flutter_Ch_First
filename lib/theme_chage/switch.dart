import 'package:adv_fullter_ch1/theme_chage/theme_change.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

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
    theme: ThemeData.light(),

      darkTheme: ThemeData.dark(),

      // themeMode: isDark?ThemeMode.dark:ThemeMode.light,

      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Theme'),
          actions: [
            Switch(value: isDark, onChanged:(value){setState(() {
              isDark=value;

            });})
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
          
            children: [
              Container(
                height: h,
                width: w,
                child: Column
                  (
                  children: [
                    SizedBox(height: 90,),
                    Text('Harsh Dusane !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36),),
                    SizedBox(height: 20,),
                    Text('It\' s a Simple exmple of ',style: TextStyle(fontSize: 20),),
                    Text('dark theme ',style: TextStyle(fontSize: 20),),
          
                  ],
                ),
              )
          
            ],
          ),
        ),
      ),
    );
  }
}

bool isDark=false;