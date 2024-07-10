


import 'package:adv_fullter_ch1/Screen/pr_1.4/Provider/Home_Provider.dart';
import 'package:adv_fullter_ch1/Screen/pr_1.4/View/Home_Page.dart';
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
      create: (context)=>HomeProvider(),
      builder: (context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
         theme:ThemeData(
           brightness: Brightness.light,
           colorScheme: ColorScheme.light(
             primary: Colors.purple,
             secondary: Colors.green,
             onPrimary: Colors.blue,
             onSecondary: Colors.red,
             tertiary: Colors.purple


           )

         ) ,
         darkTheme:ThemeData(
         brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
    primary: Colors.orange,
    secondary: Colors.blue,
    onPrimary: Colors.red,
    onSecondary: Colors.yellow,
    tertiary: Colors.orange)
         ) ,
         themeMode: Provider.of<HomeProvider>(context).isDark?ThemeMode.dark:ThemeMode.light,
         home:HomePage(),
      ),
    );
  }
}

