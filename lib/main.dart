






import 'package:adv_fullter_ch1/Screen/PR_1.6_Task_1/Provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'Screen/PR_1.6_Task_1/view/home.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

   SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
  bool theme =sharedPreferences.getBool('theme')?? false;
  runApp(ChangeNotifierProvider(
    create: (context)=>SharedHomeProvider(theme),
      child: const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Provider
          .of<SharedHomeProvider>(context, listen: true)
          .isDark ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(),
    );
  }

}
