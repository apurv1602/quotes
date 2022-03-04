import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'quote.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome qoute'),
        centerTitle: true,
           backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quote.map((quote) =>  Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );
  }
}
