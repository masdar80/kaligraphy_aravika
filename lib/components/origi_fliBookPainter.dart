import 'dart:ui';
import 'package:flutter/material.dart';
class FlipBookPainter extends CustomPainter {
  final offsets;
  final _profileColor;
  final _lineSize;


  FlipBookPainter(this.offsets,this._profileColor,this._lineSize) : super();
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..color = _profileColor
      ..isAntiAlias = true
      ..strokeWidth = _lineSize
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;


    /*for (var offset in offsets) {
      print('offset : $offset');
      canvas.drawPoints(PointMode.points, [offset], paint);
    }*/

    for (var i=0;i<offsets.length;i++)
    {
      if(offsets[i]!=null&& offsets[i+1]!=null)
      {
        // canvas.drawImage(Image.asset("img/subcat/ruqaa/words_sentences.png", offsets[i+1], paint);
        canvas.drawLine(offsets[i], offsets[i+1], paint);
      }
      else if (offsets[i]!=null&& offsets[i+1]==null)
      {
        canvas.drawPoints(PointMode.points, [offsets[i]], paint);
      }
    }


  }

  @override
  bool shouldRepaint(FlipBookPainter oldDelegate) =>
      _lineSize==oldDelegate._lineSize&&_profileColor==oldDelegate._profileColor;
}
