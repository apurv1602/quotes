import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
    home: Quotea(),
  ));

class Quotea extends StatefulWidget {


  @override
  _QuoteaState createState() => _QuoteaState();
}

class _QuoteaState extends State<Quotea> {
  List<Quote> quotes =[
    Quote(text:'fuck you',author:'apurv' ),
    Quote(author:'apurv', text:'fuck you'),
    Quote(author:'apurv', text:'fuck you'),
  ];


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
        children: quotes.map((quote) => Quotecard(
            quote: quote,
          delete: (){
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
    );
  }
}


