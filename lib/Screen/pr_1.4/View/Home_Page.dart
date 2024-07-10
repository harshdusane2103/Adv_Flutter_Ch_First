import 'package:adv_fullter_ch1/Screen/pr_1.4/Provider/Home_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvidertrue=Provider.of(context,listen: true);
    HomeProvider homeProviderfalse=Provider.of(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [Icon(Icons.add)],

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('asstes/image/harsh.jpg'),
              ),
              SizedBox(height: 5,),
              Text("HARSH DUSANE",style: TextStyle(fontSize: 24),),
              SizedBox(height: 20,),
              Row(

                children: [
                  Icon(Provider.of<HomeProvider>(context, listen: true).isDark
                      ? Icons.nightlight_round
                      : Icons.sunny,color: Theme.of(context).colorScheme.primary,size: 24,),
                  SizedBox(width: 20,),
                  Text('Dark Mode',style:TextStyle(fontSize: 24),),
                  SizedBox(width: 170,),
                  Switch(value: homeProvidertrue.isDark, onChanged: (value){
                    homeProviderfalse.Themechange();
                  }),
                ],
              ),
              SizedBox(height: 20,),
              Row(

                children: [
                  Icon(Icons.grid_view_outlined,color: Theme.of(context).colorScheme.secondary,size: 24,),
                  SizedBox(width: 20,),
                  Text('Story',style:TextStyle(fontSize: 24),),

                ],
              ),
              SizedBox(height: 20,),
              Row(

                children: [
                  Icon(Icons.settings,color: Theme.of(context).colorScheme.onPrimary,size: 24,),
                  SizedBox(width: 20,),
                  Text('Settings and Privacy',style:TextStyle(fontSize: 24),),

                ],
              ),
              SizedBox(height: 20,),
              Row(

                children: [
                  Icon(Icons.comment_outlined,color: Theme.of(context).colorScheme.onSecondary,size: 24,),
                  SizedBox(width: 20,),
                  Text('Help Center',style:TextStyle(fontSize: 24),),

                ],
              ),
              SizedBox(height: 20,),
              Row(

                children: [
                  Icon(Icons.notifications,color: Theme.of(context).colorScheme.tertiary,size: 24,),
                  SizedBox(width: 20,),
                  Text('Notifications',style:TextStyle(fontSize: 24),),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
