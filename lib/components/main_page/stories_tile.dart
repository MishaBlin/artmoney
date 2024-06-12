import 'package:artmoney/settings.dart';
import 'package:flutter/material.dart';

class StoriesTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Widget page;

  const StoriesTile({
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
        padding: const EdgeInsets.all(3),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Purple),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.4), BlendMode.darken),
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title.length > textOverflowBound
                              ? '${title.substring(0, textOverflowBound - 3)}...'
                              : title,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
