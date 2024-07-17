
import 'package:adv_fullter_ch1/Screen/Gallray/Provider/provider.dart';
import 'package:adv_fullter_ch1/Screen/Gallray/View/gallrayscreen.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>GalleryProvider(),

      builder:(context,child) =>MaterialApp(

        debugShowCheckedModeBanner: false,
        home: GallrayScreen(),
      ),
    );
  }
}









// import 'package:adv_fullter_ch1/Screen/PR_1.6_Task_2/Provider/Introprovider.dart';
// import 'package:adv_fullter_ch1/Screen/PR_1.6_Task_2/View/HomeScreen.dart';
// import 'package:adv_fullter_ch1/Screen/PR_1.6_Task_2/View/IntroScreen.dart';
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';






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
// Future<void> main()
// async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//
//  bool shows = preferences.getBool('viewed') ?? false;  runApp(ChangeNotifierProvider(
//       create:(context)=>IntroProvider(shows),
//       child: MyApp()));
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home:Provider.of<IntroProvider>(context, listen: false).isClicked ?HomeScreen() :IntroScreen1(),
//       );
//
//   }
// }
