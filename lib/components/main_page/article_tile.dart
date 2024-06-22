import 'package:flutter/material.dart';

class ArticleTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Widget page;

  const ArticleTile({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.page,
  });

  final textOverflowBound = 27;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 2)),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 160,
                  width: 250,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 40,
                  width: 250,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      title.length > textOverflowBound
                          ? '${title.substring(0, textOverflowBound - 3)}...'
                          : title,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
