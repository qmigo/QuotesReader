import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  final dynamic quote;
  final dynamic delete;
  QuoteCard ({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.title,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800]
              ),
            ),
            const SizedBox(height: 8.0),
            TextButton.icon(
                onPressed: delete,
                icon: Icon(
                  Icons.delete,
                  color: Colors.grey[700],
                ),
                label: Text(
                    'Delete',
                  style: TextStyle(
                    color: Colors.grey[700]
                  ),
                ))
          ],
        ),
      ),
    );
  }
}