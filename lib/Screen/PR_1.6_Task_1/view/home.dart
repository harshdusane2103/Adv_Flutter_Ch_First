import 'package:adv_fullter_ch1/Screen/PR_1.6_Task_1/Provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    SharedHomeProvider sharedHomeProviderTrue=Provider.of(context,listen: true);
    SharedHomeProvider sharedHomeProviderFalse=Provider.of(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Shared Perfernce'),
      ),
      body: Center(
        child: Switch(value: sharedHomeProviderTrue.isDark,onChanged: (value){
          sharedHomeProviderFalse.ChangeTheme();

        },),
      ),
    );

  }
}
