import 'package:flutter/material.dart';

class ArticleDetailPage extends StatelessWidget {
  final String title = 'Hey!';

  const ArticleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Details for $title'),
      ),
    );
  }
}
