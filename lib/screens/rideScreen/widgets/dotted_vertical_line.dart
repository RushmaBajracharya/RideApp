import 'package:flutter/material.dart';

class DottedVerticalLine extends StatelessWidget {
  final double height;
  final Color color;
  final double strokeWidth;
  final double gap;
  final double dashLength;

  const DottedVerticalLine({
    Key? key,
    required this.height,
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.gap = 5.0,
    this.dashLength = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: CustomPaint(
        painter: _DottedVerticalLinePainter(
          color: color,
          strokeWidth: strokeWidth,
          gap: gap,
          dashLength: dashLength,
        ),
      ),
    );
  }
}

class _DottedVerticalLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;
  final double dashLength;

  _DottedVerticalLinePainter({
    required this.color,
    required this.strokeWidth,
    required this.gap,
    required this.dashLength,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    double y = 0;
    while (y < size.height) {
      canvas.drawLine(
        Offset(0, y),
        Offset(0, y + dashLength),
        paint,
      );
      y += dashLength + gap;
    }
  }

  @override
  bool shouldRepaint(_DottedVerticalLinePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(_DottedVerticalLinePainter oldDelegate) => false;
}
