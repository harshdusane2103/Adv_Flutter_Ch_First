





import 'package:adv_fullter_ch1/Screen/quote_1.5/provider/homeprovider.dart';
import 'package:adv_fullter_ch1/Screen/quote_1.5/view/home.dart';
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
      create: (context)=>QuoteProvider(),
      builder:(context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuoteHomePage(),
      ),
    );
  }
}
