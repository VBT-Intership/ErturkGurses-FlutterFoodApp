import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({Key key, this.index, this.size}) : super(key: key);
  final double size;
  final String index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20, bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          height: size,
          width: size,
          child: Image.network(
            'https://placeimg.com/150/150/${this.index}',
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
