import 'package:adv_fullter_ch1/Screen/quote_1.5/Modal/modal.dart';
import 'package:adv_fullter_ch1/Screen/quote_1.5/provider/homeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuoteHomePage extends StatelessWidget {
  const QuoteHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    QuoteProvider quoteProvidertrue = Provider.of<QuoteProvider>(context, listen: true);
    QuoteProvider quoteProviderfalse = Provider.of<QuoteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Quote"),
      ),
      body: ListView.builder(
        itemCount: quoteProvidertrue.QuotefinalList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            // leading: Text(index.toString()),
            title: Text(quoteProvidertrue.QuotefinalList[index].quote!),
            subtitle: Text(
              quoteProvidertrue.QuotefinalList[index].author!,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              onPressed: () {
                quoteProviderfalse.removeData(index);
              },
              icon: Icon(Icons.delete),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          TextEditingController txtquote = TextEditingController();
          TextEditingController txtauthor = TextEditingController();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('ADD "Quote"'),
              content: Container(
                height: 120,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: txtquote,
                        decoration: InputDecoration(label: Text('Quote')),
                      ),
                      TextField(
                        controller: txtauthor,
                        decoration: InputDecoration(label: Text('Author')),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Delete')),
                TextButton(
                    onPressed: () {
                      controllerModal model = controllerModal(
                        quote: txtquote.text,
                        author: txtauthor.text,
                      );
                      quoteProviderfalse.addData(model);
                      Navigator.pop(context);
                    },
                    child: Text('Add')),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
