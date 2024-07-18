

import 'package:adv_fullter_ch1/Screen/Gallray/Modal/modal.dart';
import 'package:flutter/material.dart';
class HiddenScreen extends StatelessWidget {
  const HiddenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('Hidden'),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],

      ),
      body: GridView.builder(
        itemCount: HiddenList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          childAspectRatio: 0.95,
        ),
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(HiddenList[index]['image']),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
