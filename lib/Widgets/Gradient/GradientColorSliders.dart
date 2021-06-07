// import 'package:colorApp/Screens/Gradient.dart';
// import 'package:flutter/material.dart';

// import 'package:colorApp/Logic/GradientBloc.dart';
// import 'package:colorApp/Models/GradientModel.dart';
// import 'package:colorApp/Widgets/RoundedRectangularThumb.dart';

// TextStyle formStyle = new TextStyle(
//   fontSize: 20,
//   color: Colors.white,
// );

// TextStyle colorHexStyle = new TextStyle(
//   fontSize: 8,
//   color: Colors.white,
//   fontWeight: FontWeight.w600,
// );

// int _index = 0;

// double _redValue = 0;
// double _greenValue = 0;
// double _blueValue = 0;

// class GradientColorSliders extends StatefulWidget {
//   GradientColorSliders({
//     Key key,
//     @required this.gradientBloc,
//     @required this.snapshot,
//     //@required this.gradientColor,
//   }) : super(key: key);

//   final GradientBloc gradientBloc;
//   final AsyncSnapshot snapshot;
//   //final GradientColor gradientColor;

//   @override
//   _GradientColorSlidersState createState() => _GradientColorSlidersState();
// }

// class _GradientColorSlidersState extends State<GradientColorSliders> {
//   String colorHexMaker(int red, int green, int blue) {
//     return red.round().toRadixString(16) +
//         green.round().toRadixString(16) +
//         blue.round().toRadixString(16);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(children: <Widget>[
//         Padding(
//           padding: new EdgeInsets.only(top: 20),
//         ),
//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   children: [
//         //     ColorSelectorButtons(
//         //       index: 0,
//         //       colorHex: colorHexMaker(
//         //         this.widget.snapshot.data[0].red,
//         //         this.widget.snapshot.data[0].green,
//         //         this.widget.snapshot.data[0].blue,
//         //       ),
//         //     ),
//         //     ColorSelectorButtons(
//         //       index: 1,
//         //       colorHex: colorHexMaker(
//         //         this.widget.snapshot.data[1].red,
//         //         this.widget.snapshot.data[1].green,
//         //         this.widget.snapshot.data[1].blue,
//         //       ),
//         //     ),
//         //     ColorSelectorButtons(
//         //       index: 2,
//         //       colorHex: colorHexMaker(
//         //         this.widget.snapshot.data[2].red,
//         //         this.widget.snapshot.data[2].green,
//         //         this.widget.snapshot.data[2].blue,
//         //       ),
//         //     ),
//         //     ColorSelectorButtons(
//         //       index: 3,
//         //       colorHex: colorHexMaker(
//         //         this.widget.snapshot.data[3].red,
//         //         this.widget.snapshot.data[3].green,
//         //         this.widget.snapshot.data[3].blue,
//         //       ),
//         //     ),
//         //     IconButton(
//         //       onPressed: () {
//         //         setState(() {
//         //           this.widget.gradientColor;
//         //         });
//         //       },
//         //       icon: Icon(Icons.replay),
//         //       color: Colors.white,
//         //     ),
//         //   ],
//         // ),
//         Padding(
//           padding: new EdgeInsets.only(top: 30),
//         ),
//         GradientSliders(
//           gradientBloc: this.widget.gradientBloc,
//           snapshot: this.widget.snapshot,
//         ),
//       ]),
//     );
//   }
// }

// class ColorSelectorButtons extends StatefulWidget {
//   ColorSelectorButtons({Key key, @required this.index, @required this.colorHex})
//       : super(key: key);

//   final int index;
//   final String colorHex;
//   @override
//   _ColorSelectorButtonsState createState() => _ColorSelectorButtonsState();
// }

// class _ColorSelectorButtonsState extends State<ColorSelectorButtons> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       child: MaterialButton(
//         color: Color(0xff252525),
//         child: Text(
//           this.widget.colorHex,
//           style: colorHexStyle,
//         ),
//         onPressed: () {
//           _index = this.widget.index;
//         },
//       ),
//     );
//   }
// }

// class GradientSliders extends StatefulWidget {
//   GradientSliders(
//       {Key key, @required this.gradientBloc, @required this.snapshot})
//       : super(key: key);
//   final GradientBloc gradientBloc;
//   final AsyncSnapshot snapshot;
//   @override
//   _GradientSlidersState createState() => _GradientSlidersState();
// }

// class _GradientSlidersState extends State<GradientSliders> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 20),
//       child: Column(
//         children: <Widget>[
//           RoundedRectangularSliderGradient(
//             gradientBloc: this.widget.gradientBloc,
//             snapshot: this.widget.snapshot,
//             prefixText: 'R',
//             inactiveTrackColor: Colors.red[200],
//             activeTrackColor: Colors.red[700],
//             thumbColor: Colors.redAccent,
//             value: _redValue,
//           ),
//           RoundedRectangularSliderGradient(
//             gradientBloc: this.widget.gradientBloc,
//             snapshot: this.widget.snapshot,
//             prefixText: 'G',
//             inactiveTrackColor: Colors.green[200],
//             activeTrackColor: Colors.green[700],
//             thumbColor: Colors.greenAccent[700],
//             value: _greenValue,
//           ),
//           RoundedRectangularSliderGradient(
//             gradientBloc: this.widget.gradientBloc,
//             snapshot: this.widget.snapshot,
//             prefixText: 'B',
//             inactiveTrackColor: Colors.blue[200],
//             activeTrackColor: Colors.blue[700],
//             thumbColor: Colors.blueAccent,
//             value: _blueValue,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class RoundedRectangularSliderGradient extends StatefulWidget {
//   const RoundedRectangularSliderGradient(
//       {Key key,
//       this.gradientBloc,
//       this.snapshot,
//       this.prefixText,
//       this.inactiveTrackColor,
//       this.activeTrackColor,
//       this.thumbColor,
//       this.value})
//       : super(key: key);

//   final GradientBloc gradientBloc;
//   final AsyncSnapshot snapshot;
//   final Color inactiveTrackColor;
//   final Color activeTrackColor;
//   final Color thumbColor;
//   final String prefixText;
//   final double value;

//   @override
//   _RoundedRectangularSliderGradientState createState() =>
//       _RoundedRectangularSliderGradientState();
// }

// class _RoundedRectangularSliderGradientState
//     extends State<RoundedRectangularSliderGradient> {
//   double rgbValue() {
//     if (this.widget.prefixText.toUpperCase() == 'R')
//       return this.widget.snapshot.data[_index].red.toDouble();
//     else if (this.widget.prefixText.toUpperCase() == 'G')
//       return this.widget.snapshot.data[_index].green.toDouble();
//     else if (this.widget.prefixText.toUpperCase() == 'B')
//       return this.widget.snapshot.data[_index].blue.toDouble();

//     return 0;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SliderTheme(
//       data: SliderTheme.of(context).copyWith(
//         activeTrackColor: this.widget.activeTrackColor,
//         inactiveTrackColor: this.widget.inactiveTrackColor,
//         trackShape: RectangularSliderTrackShape(),
//         trackHeight: 4.0,
//         thumbShape: SliderRoundedRectangularThumb(
//             thumbHeight: 40,
//             thumbRadius: 2,
//             min: 0,
//             max: 255,
//             prefixText: this.widget.prefixText),
//         thumbColor: this.widget.thumbColor,
//         overlayColor: this.widget.activeTrackColor.withAlpha(32),
//         overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
//         showValueIndicator: ShowValueIndicator.never,
//         valueIndicatorShape: PaddleSliderValueIndicatorShape(),
//         valueIndicatorColor: Colors.redAccent,
//         valueIndicatorTextStyle: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//       child: Slider(
//           label: rgbValue().toString(),
//           value: rgbValue(),
//           min: 0,
//           max: 255,
//           divisions: 255,
//           onChanged: (double value) {
//             setState(() {
//               if (this.widget.prefixText == 'R') {
//                 _redValue = value;
//                 print(_redValue);
//               }
//               if (this.widget.prefixText == 'G') {
//                 _greenValue = value;
//                 print(_greenValue);
//               }
//               if (this.widget.prefixText == 'B') {
//                 _blueValue = value;
//                 print(_blueValue);
//               }
//               this.widget.gradientBloc.getGradientColorChange.add(GradientModel(
//                   _index,
//                   _redValue.toInt(),
//                   _greenValue.toInt(),
//                   _blueValue.toInt()));

//               print(_redValue.toString() +
//                   ' ' +
//                   _greenValue.toString() +
//                   ' ' +
//                   _blueValue.toString() +
//                   "hehe" +
//                   this.widget.snapshot.data[_index].red.toString() +
//                   this.widget.snapshot.data[_index].green.toString() +
//                   this.widget.snapshot.data[_index].blue.toString()+
//                   this.widget.snapshot.data);
//             });
//           }),
//     );
//   }
// }