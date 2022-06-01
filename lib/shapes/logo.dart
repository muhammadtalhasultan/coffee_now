// import 'package:flutter/material.dart';

// //Add this CustomPaint widget to the Widget Tree
// // CustomPaint(
// //     size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
// //     painter: RPSCustomPainter(),
// // )



// //Copy this CustomPainter code to the Bottom of the File
// class Logo extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.2500000, size.height * 0.2500000);
//     path_0.cubicTo(
//         size.width * 0.3880714,
//         size.height * 0.1119286,
//         size.width * 0.6119286,
//         size.height * 0.1119286,
//         size.width * 0.7500000,
//         size.height * 0.2500000);
//     path_0.cubicTo(
//         size.width * 0.8880677,
//         size.height * 0.3880714,
//         size.width * 0.8880677,
//         size.height * 0.6119286,
//         size.width * 0.7500000,
//         size.height * 0.7500000);
//     path_0.lineTo(size.width * 0.5744323, size.height * 0.9255714);
//     path_0.cubicTo(
//         size.width * 0.5333248,
//         size.height * 0.9666767,
//         size.width * 0.4666752,
//         size.height * 0.9666767,
//         size.width * 0.4255677,
//         size.height * 0.9255714);
//     path_0.lineTo(size.width * 0.2500000, size.height * 0.7500000);
//     path_0.cubicTo(
//         size.width * 0.1119286,
//         size.height * 0.6119286,
//         size.width * 0.1119286,
//         size.height * 0.3880714,
//         size.width * 0.2500000,
//         size.height * 0.2500000);
//     path_0.close();

//     Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
//     paint_0_fill.color = Color(0xff321D0B).withOpacity(1.0);
//     canvas.drawPath(path_0, paint_0_fill);

//     Paint paint_1_stroke = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.03291767;
//     paint_1_stroke.color = Colors.white.withOpacity(1.0);
//     canvas.drawOval(
//         Rect.fromCenter(
//             center: Offset(size.width * 0.4982699, size.height * 0.5047835),
//             width: size.width * 0.3198481,
//             height: size.height * 0.3875083),
//         paint_1_stroke);

//     Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
//     paint_1_fill.color = Color(0xff000000).withOpacity(1.0);
//     canvas.drawOval(
//         Rect.fromCenter(
//             center: Offset(size.width * 0.4982699, size.height * 0.5047835),
//             width: size.width * 0.3198481,
//             height: size.height * 0.3875083),
//         paint_1_fill);

//     Path path_2 = Path();
//     path_2.moveTo(size.width * 0.4892353, size.height * 0.3107143);
//     path_2.cubicTo(
//         size.width * 0.4966617,
//         size.height * 0.3114767,
//         size.width * 0.5141940,
//         size.height * 0.3258000,
//         size.width * 0.5249113,
//         size.height * 0.3769947);
//     path_2.cubicTo(
//         size.width * 0.5383083,
//         size.height * 0.4409880,
//         size.width * 0.4259376,
//         size.height * 0.5556895,
//         size.width * 0.4853429,
//         size.height * 0.6770053);

//     Paint paint_2_stroke = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.03291767;
//     paint_2_stroke.color = Colors.white.withOpacity(1.0);
//     canvas.drawPath(path_2, paint_2_stroke);

//     Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
//     paint_2_fill.color = Color(0xff000000).withOpacity(1.0);
//     canvas.drawPath(path_2, paint_2_fill);

//     Path path_3 = Path();
//     path_3.moveTo(size.width * 0.4798173, size.height * 0.6616323);
//     path_3.cubicTo(
//         size.width * 0.4921195,
//         size.height * 0.6780346,
//         size.width * 0.5241038,
//         size.height * 0.7059188,
//         size.width * 0.5536286,
//         size.height * 0.6862361);

//     Paint paint_3_stroke = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.03291767;
//     paint_3_stroke.color = Colors.white.withOpacity(1.0);
//     canvas.drawPath(path_3, paint_3_stroke);

//     Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
//     paint_3_fill.color = Color(0xff000000).withOpacity(1.0);
//     canvas.drawPath(path_3, paint_3_fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
