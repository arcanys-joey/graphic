import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:intl/intl.dart';

import '../mydata.dart';

final _monthDayFormat = DateFormat('MM-dd');

class MyLinearPlotPage extends StatelessWidget {
  MyLinearPlotPage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('My Linear plot'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 1500,
                height: 150,
                child: Chart(
                  data: hgazeExamData,
                  variables: {
                    'frame': Variable(
                      accessor: (Map map) => map['frame'] as String,
                      scale: OrdinalScale(tickCount: 5, inflate: true),
                    ),
                    'points': Variable(
                      accessor: (Map map) => map['points'] as num,
                    ),
                    'label': Variable(
                      accessor: (Map map) => map['label'] as String,
                    ),
                  },
                  coord: RectCoord(horizontalRange: [0.01, 0.99]),
                  marks: [
                    LineMark(
                      position:
                          Varset('frame') * Varset('points') / Varset('label'),
                      shape: ShapeEncode(value: BasicLineShape(smooth: true)),
                      size: SizeEncode(value: 0.5),
                      color: ColorEncode(
                        variable: 'label',
                        values: Defaults.colorsExam,
                      ),
                    ),
                  ],
                  axes: [
                    Defaults.horizontalAxis,
                    Defaults.verticalAxis,
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 1500,
                height: 150,
                child: Chart(
                  data: vgazeExamData,
                  variables: {
                    'frame': Variable(
                      accessor: (Map map) => map['frame'] as String,
                      scale: OrdinalScale(tickCount: 5, inflate: true),
                    ),
                    'points': Variable(
                      accessor: (Map map) => map['points'] as num,
                    ),
                    'label': Variable(
                      accessor: (Map map) => map['label'] as String,
                    ),
                  },
                  coord: RectCoord(horizontalRange: [0.01, 0.99]),
                  marks: [
                    LineMark(
                      position:
                          Varset('frame') * Varset('points') / Varset('label'),
                      shape: ShapeEncode(value: BasicLineShape(smooth: true)),
                      size: SizeEncode(value: 0.5),
                      color: ColorEncode(
                        variable: 'label',
                        values: Defaults.colorsExam,
                      ),
                    ),
                  ],
                  axes: [
                    Defaults.horizontalAxis,
                    Defaults.verticalAxis,
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 1500,
                height: 150,
                child: Chart(
                  data: pupilDiameter,
                  variables: {
                    'frame': Variable(
                      accessor: (Map map) => map['frame'] as String,
                      scale: OrdinalScale(tickCount: 5, inflate: true),
                    ),
                    'points': Variable(
                      accessor: (Map map) => map['points'] as num,
                    ),
                    'label': Variable(
                      accessor: (Map map) => map['label'] as String,
                    ),
                  },
                  coord: RectCoord(horizontalRange: [0.01, 0.99]),
                  marks: [
                    LineMark(
                      position:
                          Varset('frame') * Varset('points') / Varset('label'),
                      shape: ShapeEncode(value: BasicLineShape(smooth: true)),
                      size: SizeEncode(value: 0.5),
                      color: ColorEncode(
                        variable: 'label',
                        values: Defaults.colorsExam,
                      ),
                    ),
                  ],
                  axes: [
                    Defaults.horizontalAxis,
                    Defaults.verticalAxis,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
