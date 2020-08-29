import 'package:flutter/material.dart';

class MiddlePart extends StatelessWidget {
  const MiddlePart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Row(children: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Card(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.favorite, color: Colors.white),
              )),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text('Popular',
                  style: TextStyle(
                      height: 1.5, fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            Text(
              'Monggo,entekno duwekmu!',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ]),
      Icon(Icons.arrow_forward)
    ]);
  }
}
