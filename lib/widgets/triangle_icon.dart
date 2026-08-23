import 'package:flutter/material.dart';

class TriangleIcon extends StatelessWidget {
  const TriangleIcon({super.key, this.size = 26});

  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _TrianglePainter(
        color: Theme.of(context).iconTheme.color ?? Colors.white,
      ),
    );
  }
}

class _TrianglePainter extends CustomPainter {
  _TrianglePainter({required this.color});

  final Color color;

  Path _roundedTriangle(Size size, double radius) {
    final p0 = Offset(size.width * 0.12, size.height * 0.16);
    final p1 = Offset(size.width * 0.88, size.height * 0.16);
    final p2 = Offset(size.width * 0.50, size.height * 0.90);

    final points = [p0, p1, p2];
    final path = Path();

    for (var i = 0; i < points.length; i++) {
      final curr = points[i];
      final prev = points[(i - 1 + points.length) % points.length];
      final next = points[(i + 1) % points.length];

      final toPrev = prev - curr;
      final toNext = next - curr;
      final startPoint = curr + toPrev / toPrev.distance * radius;
      final endPoint = curr + toNext / toNext.distance * radius;

      if (i == 0) {
        path.moveTo(startPoint.dx, startPoint.dy);
      } else {
        path.lineTo(startPoint.dx, startPoint.dy);
      }
      path.quadraticBezierTo(curr.dx, curr.dy, endPoint.dx, endPoint.dy);
    }
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.11
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(_roundedTriangle(size, size.width * 0.22), paint);

    final innerPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.09
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(size.width * 0.66, size.height * 0.34),
      Offset(size.width * 0.36, size.height * 0.62),
      innerPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _TrianglePainter oldDelegate) =>
      oldDelegate.color != color;
}