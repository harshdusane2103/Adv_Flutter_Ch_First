import 'package:adv_fullter_ch1/Screen/Interaction/Provider/InteractionProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class InteractionSceen extends StatelessWidget {
  const InteractionSceen({super.key});

  @override

  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    IntractionProvider intractionProvider=Provider.of<IntractionProvider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.blue,),
       centerTitle: true,
       title: Text("Contact Us",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
       
      ),
      body: Center(
        child: Column(

          children: [
            Text('If you have any queries,get in touch with',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
            Text('  us.We will be happy to helpp you !',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
            SizedBox(height: h*0.04,),
            InkWell( onTap: () {
              intractionProvider.Phoneluncher();
            },
              child: Container(
                height: h*0.10,
                width: w*0.70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue.shade50)
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.aod,color: Colors.blue,size: 24,),
                  Text('+91 1800 144 9999',style: TextStyle(color: Colors.black),),
                ],
              ),),
            ),
            SizedBox(height: h*0.02,),
            
            InkWell(
              onTap: () {
                intractionProvider.maillauncher();
              },
              child: Container(
                height: h*0.10,
                width: w*0.70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue.shade50)
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.mail_outline_outlined,color: Colors.blue,size: 24,),
                  Text('infoxyz@mail.com',style: TextStyle(color: Colors.black),),
                ],
              ),),
            ),
            SizedBox(height: h*0.02,),
            InkWell(
              onTap: () {

              },
              child: Container(
                height: h*0.10,
                width: w*0.70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                    border: Border.all(color: Colors.blue.shade50)
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Social Media',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),),
            ),
           
            InkWell(
              onTap: () {
                intractionProvider.gitlauncher();
              },
              child: Container(
                height: h*0.10,
                width: w*0.70,
                decoration: BoxDecoration(
                    color: Colors.white,

                    border: Border.all(color: Colors.blue.shade50)
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(

                      width: w*0.10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(

                          image: AssetImage('asstes/image/git.png')
                        )
                      ),


                    ),
                    Text('kkaring02213',style: TextStyle(color: Colors.black),),
                  ],
                ),),
            ),

            InkWell(
              onTap: () {
                intractionProvider.instlauncher();
              },
              child: Container(
                height: h*0.10,
                width: w*0.70,
                decoration: BoxDecoration(
                    color: Colors.white,

                    border: Border.all(color: Colors.blue.shade50)
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(

                      width: w*0.10,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(

                              image: AssetImage('asstes/image/insta.png')
                          )
                      ),


                    ),
                    Text('Hkramesh',style: TextStyle(color: Colors.black),),
                  ],
                ),),
            ),

            InkWell(onTap: () {
              intractionProvider.linkdinlauncher();
            },
              child: Container(
                height: h*0.10,
                width: w*0.70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    border: Border.all(color: Colors.blue.shade50)
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(

                      width: w*0.10,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(

                              image: AssetImage('asstes/image/link.png')
                          )
                      ),


                    ),
                    Text('HKramesh',style: TextStyle(color: Colors.black),),
                  ],
                ),),
            ),
          ],
        ),
      ),
  

    );
  }
}
