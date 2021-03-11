import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;
import 'dart:async' show Future;

class FlipBookPainter extends CustomPainter {
  List<TouchPoints> points;

  FlipBookPainter(this.points) : super();

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < points.length; i++) {
      canvas.drawImage(points[i].image, points[i].points, points[i].paint);
    }
  }

  @override
  bool shouldRepaint(FlipBookPainter oldDelegate) => true;
}

class TouchPoints {
  Paint paint;
  Offset points;
  ui.Image image;

  TouchPoints({this.points, this.paint, this.image});


}
class SavedhPoints {
  double x;
  double y;


  SavedhPoints({this.x,this.y});

  SavedhPoints.fromJson(Map<String, dynamic> json)
      : x = json['x'],
        y = json['y'];

  Map<String, dynamic> toJson() => {
    'x': x,
    'y': y,
  };
}

class SavedhPointsList {
  final List<SavedhPoints> spoints;

  SavedhPointsList(this.spoints);

  SavedhPointsList.fromJson(Map<String, dynamic> json)
      : spoints = json['spoints'] != null ? List<SavedhPoints>.from(json['spoints']) : null;

  Map<String, dynamic> toJson()  =>
      {
        'spoints': spoints,
      };

  void addPoint(SavedhPoints point)
  {
    spoints.add(point);
  }
  void clearPoints()
  {
    spoints.clear();
  }
}