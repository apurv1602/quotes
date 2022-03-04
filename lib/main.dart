import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'quote.dart';


void main() => runApp(MaterialApp(
    home: Quotea(),
  ));

class Quotea extends StatefulWidget {


  @override
  _QuoteaState createState() => _QuoteaState();
}

class _QuoteaState extends State<Quotea> {
  List<Quote> quote =[
    Quote(text:'fuck you',author:'apurv' ),
    Quote(author:'apurv', text:'fuck you'),
    Quote(author:'apurv', text:'fuck you'),
  ];

  Widget quoteTemplet(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey[600],
              ),
            ),
          const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[800],
              ),
            ),

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome qoute'),
        centerTitle: true,
           backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quote.map((quote) => quoteTemplet(quote) ).toList(),
      ),
    );
  }
}
