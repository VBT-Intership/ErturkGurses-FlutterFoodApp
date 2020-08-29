import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vbt_practice/components/image_card.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageCard(index: (index + 5).toString(), size: 150),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: [
                    Text(
                      'View:',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      ' ${Random().nextInt(1000)} view',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          );
        });
  }
}
