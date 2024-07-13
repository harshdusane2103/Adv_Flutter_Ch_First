







import 'package:adv_fullter_ch1/Screen/PR_1.6_Task_2/View/IntroScreen.dart';
import 'package:adv_fullter_ch1/Screen/PR_1.6_Task_2/View/Introscreen2.dart';
import 'package:flutter/material.dart';






// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
//   bool theme =sharedPreferences.getBool('theme')?? false;
//   runApp(ChangeNotifierProvider(
//     create: (context)=>SharedHomeProvider(theme),
//       child: const MyApp()));
// }
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: Provider
//           .of<SharedHomeProvider>(context, listen: true)
//           .isDark ? ThemeMode.dark : ThemeMode.light,
//       home: HomePage(),
//     );
//   }
//
// }
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>IntroScreen1(),
        '/intro':(context)=>IntroScreen2(),
      },
    );
  }
}
