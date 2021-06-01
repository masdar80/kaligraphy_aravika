import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:fluttergesture/components/Settings.dart';
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
  final _offsets = <Offset>[];
  List<TouchPoints> points = List();
  List<SavedhPoints> spoints = List();
  int strokeWidth = 12;

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
  String selectedBrush = "img/brush/01/black1.png";
  Setting conf = new Setting();


  bool _longpress = false;
  bool _loopActive = false;
  @override
  void initState() {

   // testload(selectedBrush, strokeWidth, doubleToInt(_currentSliderValue));
    _zoom = 1.0;
    _previousZoom = null;
    _offset = Offset.zero;
    super.initState();


    /*.catchError((Exception error) {
      print(error.toString());
    });*/
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
                  print("20 size");
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
                  testload(selectedBrush, strokeWidth,
                      doubleToInt(_currentSliderValue));
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
                  testload(selectedBrush, strokeWidth,
                      doubleToInt(_currentSliderValue));
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
                  testload(selectedBrush, strokeWidth,
                      doubleToInt(_currentSliderValue));
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickStrokeColor() async {
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
              colorMenuItem(Colors.black, "img/brush/01/black1.png"),
              colorMenuItem(Colors.red, "img/brush/01/red.png"),
              colorMenuItem(Colors.green, "img/brush/01/green.png"),
              colorMenuItem(Colors.pink, "img/brush/01/pink.png"),
              colorMenuItem(Colors.blue, "img/brush/01/blue.png"),
              colorMenuItem(Colors.yellow, "img/brush/01/yellow.png"),
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
        return ClipOval(
            child: AlertDialog(
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
                  testload(selectedBrush, strokeWidth, doubleToInt(value));
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

  Widget colorMenuItem(Color color, String colorText) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedBrush = colorText;
          testload(
              selectedBrush, strokeWidth, doubleToInt(_currentSliderValue));
          Navigator.of(context).pop();
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
          String jsons = json.encode(spoints);
          print("json:" + jsons);
          print("user_path load key:"+Setting.user_path);
          conf.savePoints(Setting.user_path, jsons);
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
            // print("stroke");
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
        heroTag: "stroke_color",
        child: Icon(Icons.color_lens_outlined),
        tooltip: 'Stroke Color',
        onPressed: () {
          //min: 0, max: 50
          setState(() {
            // print("stroke");
            _pickStrokeColor();
          });
        },
      ),
      FloatingActionButton(
          heroTag: "erase",
          child: Icon(Icons.delete_forever),
          tooltip: "Erase",
          onPressed: () {
            setState(() {
              points.clear();
              spoints.clear();
            });
          }),
       FloatingActionButton(
      heroTag: "Load Saved",
      child: Icon(Icons.assignment_returned),
      tooltip: 'Load Saved',
      onPressed: () {
        setState(() {
          /*Load Saved*/

          print("user_path load key:"+Setting.user_path);
          conf.loadPoints(Setting.user_path).then((value){

            // Setting.setPoints(value);

            // print("loaded points:"+value);

            List<dynamic>  decodedJson  = jsonDecode(value);
            decodedJson.map((elem) => jsonDecode(elem));
            points.clear();
            for (var point in decodedJson){
              print("x: "+point['x'].toString());
              print("y: "+point['y'].toString());
              Offset npoint=Offset(point['x'], point['y']);


              spoints.add(
                  SavedhPoints(x: point['x'], y: point['y']));
              points.add(TouchPoints(
                  points: npoint,
                  paint: Paint(),
                  image: image));
            }
          });
          /*********************************/

        });
      },
    ),/*
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
    ),*/
    ];
  }

  @override
  Widget build(BuildContext context) {
    //  load('img/brush-01_small.png');
    testload(selectedBrush, strokeWidth, doubleToInt(_currentSliderValue));
    // Future<ui.Image> tst=testload('img/brush-01_small.png');






    // load('img/vector_brushes/brush.pdf');
    /*Transform(
        transform: Matrix4.diagonal3(Vector3(_scale, _scale, _scale)),
        child:*/
    return Container(
      /*decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(notePath), fit: BoxFit.cover)),*/
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          /*appBar: AppBar(
          title: Text(widget.title),
        ),*/
          /*drawer: MyDrawer(),*/
          backgroundColor: Colors.transparent,
          floatingActionButton: AnimatedFloatingActionButton(
            fabButtons: fabOption(),
            colorStartAnimation: Colors.blue,
            colorEndAnimation: Colors.cyan,
            animatedIconData: AnimatedIcons.menu_close,
          ),

          body: new Container(
            child: new Column(
              children: <Widget>[
                Transform(
                  transform: Matrix4.diagonal3(Vector3(_zoom, _zoom, 1)),
                  alignment: FractionalOffset.center,
                  child: InteractiveViewer(
                      panEnabled: false,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(notePath),
                                fit: BoxFit.cover)),
                        child:GestureDetector(

                          onLongPress:()
                          {
                            _longpress=true;

                            setState(() {

                              incrementCounter();


                            });
                          },
                            onLongPressMoveUpdate:(details)
                          {
                            _longpress=true;

                                setState(() {

                                  incrementCounter();


                                });
                          },
                          onLongPressUp:()
                          {

                            setState(() {
                              _longpress=false;
                            });

                          } ,
                          onLongPressEnd:(details)
                          {

                            setState(() {
                              _longpress=false;
                            });

                          },
                          onPanStart: (details) {
                            RenderBox box = context.findRenderObject();
                            Offset point = box.globalToLocal(details.globalPosition);

                            point = point.translate(
                                -image.height / 2, -image.width / 2);
                            points.add(TouchPoints(
                                points: point,
                                paint: Paint(),
                                image: image));
                            spoints.add(
                                SavedhPoints(x: point.dx, y: point.dy));

                            setState(() {

                            });
                          },
                          onPanUpdate: (details) {

                            RenderBox box = context.findRenderObject();
                            Offset point = box.globalToLocal(details.globalPosition);

                            point = point.translate(
                                -image.height / 2, -image.width / 2);
                            points.add(TouchPoints(
                                points: point,
                                paint: Paint(),
                                image: image));
                            spoints.add(
                                SavedhPoints(x: point.dx, y: point.dy));

                            setState(() {

                            });
                          },


                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,

                            child: CustomPaint(
                                painter: new FlipBookPainter(points),
                                child: Container(

                                )),
                          ),
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

  void incrementCounter() async {
    // make sure that only one loop is active
   // if (_loopActive) return;

    _loopActive = true;

    while (_longpress) {
      setState(() {
        if(strokeWidth<30)
       { strokeWidth += 1;
        print ("width increase : ");
        print (strokeWidth);
        testload(selectedBrush, strokeWidth,
            doubleToInt(_currentSliderValue));}


      });

      // wait a bit
      await Future.delayed(Duration(milliseconds: 200));
    }
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
    print("rotate:");
    print(rotate);
    var img = (await rootBundle.load(filename)).buffer.asUint8List();

    final imagero.Image image1 = imagero.decodeImage(img);
    final imagero.Image resized =
        imagero.copyResize(image1, width: size, height: size);
    final imagero.Image resized1 = imagero.copyRotate(resized, rotate);
    final List<int> resizedBytes = imagero.encodePng(resized1);
    var codec = await ui.instantiateImageCodec(resizedBytes);

    var fi = await codec.getNextFrame();
    image = fi.image;
    // return completer.future;
  }
}
