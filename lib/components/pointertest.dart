import 'dart:math';

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
import 'package:gesture_x_detector/gesture_x_detector.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;
import 'package:image/image.dart' as imagero;
import 'package:flutter/services.dart';
import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';

class DrawPagePointer extends StatefulWidget {
  DrawPagePointer(this.title, this.notePath);

  final String title;
  final String notePath;

  @override
  _DrawPagePointerState createState() => _DrawPagePointerState(title, notePath);
}

class _DrawPagePointerState extends State<DrawPagePointer> {
  _DrawPagePointerState(this.title, this.notePath);

  final String title;
  final String notePath;
  final _offsets = <Offset>[];
  List<TouchPoints> points = List();
  int strokeWidth = 20;

  Color _profileColor = profileColors[0];
  ui.Image image;
  Future<ui.Image> tst;
  bool isImageloaded = false;
  double _currentSliderValue = 0;
  double _scale = 1.0;
  double _previousScale = 1.0;
  double _zoom;
  double _previousZoom;
  Offset _previousOffset;
  Offset _offset;


  @override
  void initState() {
    _zoom = 1.0;
    _previousZoom = null;
    _offset = Offset.zero;
    super.initState();
  }

//MySlider(onSliderChanged)
  Future<void> _pickStroke() async {
    //Shows AlertDialog
    return showDialog<void>(
      context: context,

      //Dismiss alert dialog when set true
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        //Clips its child in a oval shape
        return ClipOval(
          child: AlertDialog(
            //Creates three buttons to pick stroke value.
            actions: <Widget>[
              //Resetting to default stroke value
              FlatButton(
                child: Icon(
                  Icons.clear,
                ),
                onPressed: () {
                  strokeWidth = 20;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.brush,
                  size: 24,
                ),
                onPressed: () {
                  strokeWidth = 30;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.brush,
                  size: 40,
                ),
                onPressed: () {
                  strokeWidth = 40;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.brush,
                  size: 60,
                ),
                onPressed: () {
                  strokeWidth = 50;
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _rotatetroke() async {
    //Shows AlertDialog
    return showDialog<void>(
      context: context,

      //Dismiss alert dialog when set true
      // barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return   ClipOval(
            child:AlertDialog(
              // title: Text('Font Size'),
              content: Container(
                height: 15,
                child: Slider(
                  value: _currentSliderValue,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      _currentSliderValue = value;
                      testload('img/brush-01_small.png', strokeWidth, doubleToInt(value));
                      //  Navigator.pop(context, _currentSliderValue);

                    });
                  },
                ),
              ),

              /* Container(
        height: 15,
        child: Slider(
          value: _currentSliderValue,
          min: 0,
          max: 100,
          divisions: 10,
          onChanged: (value) {
            print(value);
            setState(() {
              _currentSliderValue = value;
              testload('img/brush-01_small.png', strokeWidth, doubleToInt(value));
            //  Navigator.pop(context, _currentSliderValue);

            });
          },
        ),
      ),*/



              /* actions: <Widget>[
        FlatButton(
          onPressed: () {
            // Use the second argument of Navigator.pop(...) to pass
            // back a result to the page that opened the dialog
            Navigator.pop(context, _currentSliderValue);
          },
         // child: Text('DONE'),
        )
      ],*/
            ));
      },
    );


  }

  Widget colorMenuItem(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          //  selectedColor = color;
        });
      },
      child: ClipOval(
        child: Container(
          padding: const EdgeInsets.only(bottom: 8.0),
          height: 36,
          width: 36,
          color: color,
        ),
      ),
    );
  }

  List<Widget> fabOption() {
    return <Widget>[
      FloatingActionButton(
        heroTag: "paint_save",
        child: Icon(Icons.save),
        tooltip: 'Save',
        onPressed: () {
          //min: 0, max: 50
          setState(() {
            //_save();
          });
        },
      ),
      FloatingActionButton(
        heroTag: "paint_stroke",
        child: Icon(Icons.brush),
        tooltip: 'Stroke',
        onPressed: () {
          //min: 0, max: 50
          setState(() {
            _pickStroke();
          });
        },
      ),
      FloatingActionButton(
        heroTag: "paint_opacity",
        child: Icon(Icons.opacity),
        tooltip: 'Opacity',
        onPressed: () {
          //min:0, max:1
          setState(() {
            _rotatetroke();
          });
        },
      ),
      FloatingActionButton(
          heroTag: "erase",
          child: Icon(Icons.clear),
          tooltip: "Erase",
          onPressed: () {
            setState(() {
              points.clear();
            });
          }),
      FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: "color_red",
        child: colorMenuItem(Colors.red),
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            // selectedColor = Colors.red;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: "color_green",
        child: colorMenuItem(Colors.green),
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            // selectedColor = Colors.green;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: "color_pink",
        child: colorMenuItem(Colors.pink),
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            // selectedColor = Colors.pink;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: "color_blue",
        child: colorMenuItem(Colors.blue),
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            // selectedColor = Colors.blue;
          });
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {

    testload('img/brush-01_small.png', strokeWidth, doubleToInt(_currentSliderValue));

    return Container(
      /*decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(notePath), fit: BoxFit.cover)),*/
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),

          backgroundColor: Colors.transparent,
          floatingActionButton: AnimatedFloatingActionButton(
            fabButtons: fabOption(),
            colorStartAnimation: Colors.blue,
            colorEndAnimation: Colors.cyan,
            animatedIconData: AnimatedIcons.menu_close,
          ),
          drawer: MyDrawer(),
          body: new Container(
            child: new Column(
              children: <Widget>[
                Transform(
                  transform:
                  Matrix4.diagonal3(Vector3(_zoom, _zoom, 1)),
                  alignment: FractionalOffset.center,
                  child: InteractiveViewer(
                      panEnabled: false,
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height -
                            (104 + AppBar().preferredSize.height),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        child: Listener(
                          child: new Image(image: AssetImage(notePath)),
                          onPointerDown: (PointerDownEvent event){
                            print(event.position);
                          },
                        ),
                      )),
                ),

              ],
            ),
          ),

          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }

  void incrementCounter() {
    setState(() {
      strokeWidth+=5;
    });
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

  int doubleToInt(d_number) {
    double multiplier = .5;
    return (multiplier * d_number).round();
  }
  Future load(String filename) async {
    var img = (await rootBundle.load(filename)).buffer.asUint8List();

    var codec = await ui.instantiateImageCodec(img);

    var fi = await codec.getNextFrame();
    image = fi.image;
  }


  Future testload(String filename, int size, int rotate) async {
    //print("rotate:");
    // print(rotate);
    var img = (await rootBundle.load(filename)).buffer.asUint8List();

    final imagero.Image image1 = imagero.decodeImage(img);
    final imagero.Image resized = imagero.copyResize(
        image1, width: size, height: size);
    final imagero.Image resized1 = imagero.copyRotate(resized, rotate);
    final List<int> resizedBytes = imagero.encodePng(resized1);
    var codec = await ui.instantiateImageCodec(resizedBytes);

    var fi = await codec.getNextFrame();
    image = fi.image;
    // return completer.future;
  }

}
