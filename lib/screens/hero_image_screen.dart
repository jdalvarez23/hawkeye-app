import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class HeroPhotoViewRouteWrapper extends StatelessWidget {
  const HeroPhotoViewRouteWrapper({
    required this.imageProvider,
    required this.index,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
  });

  final ImageProvider imageProvider;
  final int index;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;

  @override
  Widget build(BuildContext context) {
    String tagName = "photoImage" + index.toString();
    /* return Container(
      constraints: BoxConstraints.expand(
        height: MediaQuery.of(context).size.height,
      ),
      child: PhotoView(
        imageProvider: imageProvider,
        backgroundDecoration: backgroundDecoration,
        minScale: minScale,
        maxScale: maxScale,
        heroAttributes: PhotoViewHeroAttributes(tag: tagName),
      ),
    );*/
    return Stack(
      children: [
        Positioned.fill(child: PhotoView(
          imageProvider: imageProvider,
          backgroundDecoration: backgroundDecoration,
          minScale: minScale,
          maxScale: maxScale,
          heroAttributes: PhotoViewHeroAttributes(tag: tagName),
        ),),
        Container(
          margin: EdgeInsets.only(top: 25),
          child: TextButton.icon(
              style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
              icon: Icon(Icons.arrow_back, color: Colors.white,),
              onPressed: () {
                Navigator.pop(context);
              },
              label: Text('', style: TextStyle(color: Colors.white, fontSize: 20),)
          ),
        )
      ],
    );
  }
}

void openHeroImage(BuildContext context, ImageProvider imageProvider, int index) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HeroPhotoViewRouteWrapper(imageProvider: imageProvider, index: index, backgroundDecoration: const BoxDecoration(color: Colors.black)))
  );
}