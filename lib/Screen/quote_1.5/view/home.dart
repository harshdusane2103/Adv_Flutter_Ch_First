import 'package:adv_fullter_ch1/Screen/quote_1.5/provider/homeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class QuoteHomePage extends StatelessWidget {
  const QuoteHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    QuoteProvider quoteProvidertrue=Provider.of(context,listen: true);
    QuoteProvider quoteProviderfalse=Provider.of(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Quote"),
      ),
      body: ListView.builder(
        itemCount: quoteProvidertrue.QuoteData.length,
        itemBuilder: (context, index) => Card(child: ListTile(
         leading: Text(index.toString()),
        title: Text(quoteProvidertrue.QuoteData[index]['quote']),
        subtitle: Text(quoteProvidertrue.QuoteData[index]['author']),
        trailing: IconButton(onPressed: () {
          quoteProviderfalse.removeData(index);

        },icon: Icon(Icons.delete),),

      ),),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
