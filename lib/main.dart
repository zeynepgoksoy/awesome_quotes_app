import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'package:quotes/quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));


class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override
  List <Quote> quotes = [
    Quote(text:'Everything in moderation, including moderation',author:'Oscar Wilde' ),
    Quote(text:'To love oneself is the beginning of a lifelong romance' ,author:'Oscar Wilde' ),
    Quote(text:'To live is the rarest thing in the world. Most people exist, that is all.',author:'Oscar Wilde' ),

  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Awesome Quotes'),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote : quote,
            delete: (){
              setState(() {
                quotes.remove(quote); // it removes the selected quote from quotes list
              });
            },
            )).toList(),
      ),
    );
  }
}
