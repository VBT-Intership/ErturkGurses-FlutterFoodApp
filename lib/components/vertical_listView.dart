
import 'package:flutter/material.dart';
import 'package:vbt_practice/components/popular_card.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 20),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: PopularCard(index: index));
        });
  }
}
