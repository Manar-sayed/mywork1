 import 'package:flutter/cupertino.dart';
//
// class CustomOutline extends StatelessWidget{
//   final _GradientPainter _Painter;
//   final Widget _child;
//   final double _width;
//   final double _height;
//   final EdgeInsetsGeometry _padding;
//
//   CustomOutline({
//     Key?key,
//     required double strokeWidth,
//     required double radius,
//     required double gradient,
//     required double child,
//     required double width,
//     required double hight,
//     required double EdgeInsetsGeometry padding,
// }) :_painter = _GradientPainter(
//
//   )
// }
import 'package:flutter/material.dart';
 class CustomOutline extends StatelessWidget {
   final _GradientPainter _painter;
   final Widget _child;
   final double _width;
   final double _height;
   final EdgeInsetsGeometry Padding;


   @override
   Widget build(BuildContext context) {
     return CustomPaint(
       painter: _painter,
       child: GestureDetector(
         behavior: HitTestBehavior.translucent,

         child: InkWell(


           child: Container(
             constraints: BoxConstraints(minWidth: 88, minHeight: 48),
             child: Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 _child,
               ],
             ),
           ),
         ),
       ),
     );
   }


   CustomOutline({
     Key?key,
     required double strokeWidth,
     required double radius,
     required  gradient,
     required  child,
     required  width,
     required  height,
     required EdgeInsetsGeometry Padding,
   })
       : this._painter = _GradientPainter(
       strokeWidth: strokeWidth,
       radius: radius, gradient: gradient),
         _child = child,
         _width=width,
         _height=height,
         Padding=Padding,
         super(key: key);
 }



 class _GradientPainter extends CustomPainter {
   final Paint _paint = Paint();
   final double radius;
   final double strokeWidth;
   final Gradient gradient;

   _GradientPainter({
     required double strokeWidth,
     required double radius,
     required Gradient gradient})
       : strokeWidth = strokeWidth,
         radius = radius,
         gradient = gradient;

   @override
   void paint(Canvas canvas, Size size) {
     // create outer rectangle equals size
     Rect outerRect = Offset.zero & size;
     var outerRRect = RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

     // create inner rectangle smaller by strokeWidth
     Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth, size.width - strokeWidth * 2, size.height - strokeWidth * 2);
     var innerRRect = RRect.fromRectAndRadius(innerRect, Radius.circular(radius - strokeWidth));

     // apply gradient shader
     _paint.shader = gradient.createShader(outerRect);

     // create difference between outer and inner paths and draw it
     Path path1 = Path()..addRRect(outerRRect);
     Path path2 = Path()..addRRect(innerRRect);
     var path = Path.combine(PathOperation.difference, path1, path2);
     canvas.drawPath(path, _paint);
   }

   @override
   bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
 }