import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'slider.dart';
import 'profile_model.dart';
import 'FlipBookPainter.dart';
import 'widgets.dart';
import 'dart:ui' as ui;
import 'dart:async';
import 'dart:typed_data';
import 'drawer.dart';


class DrawPage extends StatefulWidget {
  DrawPage(this.title, this.notePath);

  final String title;
  final String notePath;

  @override
  _DrawPageState createState() => _DrawPageState(title, notePath);
}

class _DrawPageState extends State<DrawPage> {
  _DrawPageState(this.title, this.notePath);

  final String title;
  final String notePath;
  List<TouchPoints> points = List();
  final _offsets = <Offset>[];
  Color _profileColor = profileColors[0];
  double _lineSize = 1;
  ui.Image image;
  bool isImageloaded = false;
  double _currentSliderValue = 5;
  double _scale=1.0;
  double _previousScale=1.0;

  @override
  Widget build(BuildContext context) {
    load('img/brush_s.png');
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(notePath), fit: BoxFit.cover)),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),

          backgroundColor: Colors.transparent,
          floatingActionButton: ColorPickerMenu(_onColorSelected),
          drawer: MyDrawer(),
          body: new Container(
            child: new Column(
              children: <Widget>[
                Container(
                  child: GestureDetector(

                   onPanStart: (details) {
                      RenderBox box = context.findRenderObject();
                      Offset point = box.globalToLocal(details.globalPosition);
                      point = point.translate(
                          -15, -2 * (AppBar().preferredSize.height) + 15);
                      setState(() {
                        _offsets.add(point);
                      });
                    },
                    onPanUpdate: (details) {

                      setState(() {
                        RenderBox box = context.findRenderObject();
                        Offset point =
                        box.globalToLocal(details.globalPosition);
                        point = point.translate(
                            -15, -2 * (AppBar().preferredSize.height) + 15);
                        _offsets.add(point);
                      });
                    },


                    child: Container(
                      // margin: EdgeInsets.all(1.0),
                      //  alignment: Alignment.topLeft,
                      height: MediaQuery.of(context).size.height -
                          (104 + AppBar().preferredSize.height),
                      width: MediaQuery.of(context).size.width,

                      //  color: Colors.blueGrey[50],

                      child: Text(widget.title),/*CustomPaint(
                          painter: new FlipBookPainter(points, _offsets, _profileColor, _lineSize, image),
                          child: Container(

                              )),*/
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      MySlider(onSliderChanged),
                      IconButton(
                          icon: new Icon(
                            Icons.undo,
                          ),
                          tooltip: 'Undo',
                          iconSize: 50,
                          onPressed: () {}),
                      IconButton(
                          icon: new Icon(
                            Icons.clear,
                          ),
                          tooltip: 'Undo',
                          iconSize: 50,
                          onPressed: () {
                            setState(() => _offsets.clear());
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),

          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }

  void _onColorSelected(Color color) {
    setState(() {
      _profileColor = color;
    });
  }

  void onSliderChanged(double newValue) {
    //print("skataaaa");
    setState(() {
      // _lineSize = newValue;
    });
  }

  Future load(String filename) async {
    var img = (await rootBundle.load(filename)).buffer.asUint8List();
    var codec = await ui.instantiateImageCodec(img);
    var fi = await codec.getNextFrame();
    image = fi.image;
  }
}
