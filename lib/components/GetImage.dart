import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:typed_data';
import 'dart:io';


class GetImage extends StatefulWidget {
  @override
  _GetImageState createState() => new _GetImageState();
}

class _GetImageState extends State<GetImage> {
  ui.Image image;
  bool isImageloaded = false;


  @override
  Widget build(BuildContext context)  {

    load('img/brush.png');
    isImageloaded=true;
    return new Scaffold(
        body: new Container(
          child: _buildImage(),
        )
    );
  }

  Future load(String filename) async {
    var img =(await rootBundle.load(filename)).buffer.asUint8List();
    var codec = await ui.instantiateImageCodec(img);
    var fi = await codec.getNextFrame();
    image= fi.image;
  }

  Widget _buildImage() {

    print ("here3");

    if (this.isImageloaded) {
      return new CustomPaint(
        painter: new ImageEditor(image: image),
      );
    } else {
      return new Center(child: new Text('skaya'));
    }
  }
}

class ImageEditor extends CustomPainter {


  ImageEditor({
    this.image,
  });

  ui.Image image;

  @override
  void paint(Canvas canvas, Size size) {
   // ByteData data = image.toByteData();
    canvas.drawImage(image, new Offset(0.0, 0.0), new Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}