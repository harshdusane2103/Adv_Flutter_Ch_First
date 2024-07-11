



import 'package:adv_fullter_ch1/Screen/COUNT-APP/Provider/home_provider.dart';
import 'package:adv_fullter_ch1/Screen/COUNT-APP/View/home_page.dart';
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
      create: (context)=>CountProvider(),
      builder: (context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
            brightness: Brightness.light,
            colorScheme: ColorScheme.light(
                primary: Colors.yellow,



            )

        ) ,
        darkTheme:ThemeData(
            brightness: Brightness.dark,
            colorScheme: ColorScheme.dark(
                primary: Colors.grey.shade600,

            )
        ) ,
        themeMode: Provider.of<CountProvider>(context).isDark?ThemeMode.dark:ThemeMode.light,
        home:HomePage(),
      ),
    );
  }
}

