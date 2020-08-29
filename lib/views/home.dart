import 'package:flutter/material.dart';
import 'package:vbt_practice/components/middle_part.dart';
import 'package:vbt_practice/components/top_part.dart';
import 'package:vbt_practice/components/vertical_listView.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TopPart(),
        ),
        Expanded(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: MiddlePart(),
            ),
            Expanded(child: VerticalListView())
          ],
        ))
      ],
    );
  }
}
