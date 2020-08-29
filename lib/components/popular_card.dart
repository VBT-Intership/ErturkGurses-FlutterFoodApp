import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vbt_practice/components/image_card.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({Key key, this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          ImageCard(index: index.toString(), size: 80),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'A Popular Picture',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, top: 5),
                  child: Row(children: [
                    Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Favorite',
                              style: TextStyle(
                                  color: Colors.yellow[700],
                                  fontWeight: FontWeight.bold)),
                        ),
                        color: Colors.yellow[100]),
                    Card(
                      color: Colors.blue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Picture',
                          style: TextStyle(
                              color: Colors.blue[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Warung buyayuk',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      Text(
                        "RP. ${Random().nextInt(10000).toString()}",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
