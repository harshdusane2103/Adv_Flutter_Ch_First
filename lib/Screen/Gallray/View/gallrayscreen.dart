

import 'package:adv_fullter_ch1/Screen/Gallray/Modal/modal.dart';
import 'package:adv_fullter_ch1/Screen/Gallray/Provider/provider.dart';
import 'package:adv_fullter_ch1/Screen/pr_1.4/View/Hidden_photos.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
class GallrayScreen extends StatelessWidget {
  const GallrayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GalleryProvider galleryProvider=Provider.of<GalleryProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('Gallery'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Albums',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Spacer(),
                Icon(Icons.search),

                  PopupMenuButton(
                    itemBuilder: (context)=>popMenu,
                    initialValue: popMenu,
                      color: Colors.white,
                      shadowColor: Colors.black,
                      surfaceTintColor: Colors.white,
                      elevation: 20,
                      onSelected: (value) async {
                    // if (value == "Hidden Image") {
                    //   await galleryProvider.authication();
                    //   if (galleryProvider.didAuthenticate) {
                    //     Navigator.push(context,MaterialPageRoute(builder: (context)=>HiddenScreen()));
                    //   }
                    // }
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>HiddenScreen()));
                  },
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HiddenScreen()));
                child: Icon(Icons.more_vert)),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Gallery(),
          ),
        ],
      ),
    );
  }

  GridView Gallery() {
    return GridView.builder(
      itemCount: GallrayList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 15,
        childAspectRatio: 0.80,
      ),
      itemBuilder: (context, index) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(GallrayList[index]['image']),
              ),
            ),
          ),
          Text(
            GallrayList[index]['name'],
            style: TextStyle(color: Colors.black),
          ),
          Text(
            GallrayList[index]['qty'],
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
