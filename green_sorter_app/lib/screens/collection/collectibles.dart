import 'package:flutter/material.dart';
import 'dart:math';

class HexagonPainter extends CustomPainter {
  final Paint _fillPaint;
  final Paint _borderPaint;

  HexagonPainter()
      : _fillPaint = Paint()
    ..color = Colors.black12
    ..style = PaintingStyle.fill,
        _borderPaint = Paint()
          ..color = Colors.green
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4.0;

  @override
  void paint(Canvas canvas, Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 2; // Để tránh viền bị cắt bớt

    final double section = pi / 3;

    Path path = Path();
    path.moveTo(centerX + radius * cos(0 + section / 2),
        centerY + radius * sin(0 + section / 2));

    for (int i = 1; i <= 6; i++) {
      double x = centerX + radius * cos(section * i + section / 2);
      double y = centerY + radius * sin(section * i + section / 2);
      path.lineTo(x, y);
    }

    path.close();

    canvas.drawPath(path, _borderPaint);
    canvas.drawPath(path, _fillPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class HexagonImageWidget extends StatelessWidget {
  final double size;
  final String imagePath;

  HexagonImageWidget({this.size = 50, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: HexagonPainter(),
      child: ClipPath(
        clipper: HexagonClipper(),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 2;

    final double section = pi / 3;

    Path path = Path();
    path.moveTo(centerX + radius * cos(0 + section / 2),
        centerY + radius * sin(0 + section / 2));

    for (int i = 1; i <= 6; i++) {
      double x = centerX + radius * cos(section * i + section / 2);
      double y = centerY + radius * sin(section * i + section / 2);
      path.lineTo(x, y);
    }

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
