import 'package:flutter/material.dart';
import 'package:vbt_practice/components/horizontal_listView.dart';

class TopPart extends StatelessWidget {
  const TopPart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 8.0, left: 50, right: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'What do you want\nto see today?',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.search),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 300,
            child: HorizontalListView(),
          ),
        ),
      ],
    );
  }
}
