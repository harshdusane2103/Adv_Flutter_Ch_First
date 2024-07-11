import 'package:adv_fullter_ch1/Screen/COUNT-APP/Provider/home_provider.dart';
import 'package:adv_fullter_ch1/Screen/pr_1.4/Provider/Home_Provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    CountProvider countProvidertrue=Provider.of(context,listen: true);
    CountProvider countProviderfalse=Provider.of(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Counter App"),
        actions:[ Switch(value: countProvidertrue.isDark, onChanged: (value){
          countProviderfalse.Themechange();
        }),]

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              SizedBox(height: 200,),

              Container(
                height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text(countProvidertrue.Count.toString(),style: TextStyle(fontSize: 36),))),



            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProviderfalse.countadd();

        },
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
