import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: Quotes(),
));

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<Quote> quotes = [
    Quote(title:'A cat is a good friend if it sleeps but a knight in night', author:'Ankur'),
    Quote(title:'Kal Sojao', author:'Ankit'),
    Quote(title:'Parso Sojao', author:'Madhav')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: const Text('Daily Quotes'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: ()=> setState((){
            quotes.remove(quote);
          })
        )).toList()
      ),
    );
  }
}



