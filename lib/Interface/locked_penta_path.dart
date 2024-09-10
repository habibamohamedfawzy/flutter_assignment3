import 'package:flutter/material.dart';



class LockedPentagonPainter extends CustomPainter {



  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withOpacity(0.5) // Color of the pentagon
      ..strokeWidth = 3.0 // Width of the border (if you draw with a border)
      ..style = PaintingStyle.fill; // Change to PaintingStyle.stroke to draw only the border
   // paint.maskFilter=const MaskFilter.blur(BlurStyle.solid, 20);
    // Define the points for the pentagon
    final path = Path();
    path.moveTo(size.width * 0.5, 0); // Top point
    path.lineTo(size.width, size.height * 0.38); // Top-right point
    path.lineTo(size.width * 0.82, size.height); // Bottom-right point
    path.lineTo(size.width * 0.18, size.height); // Bottom-left point
    path.lineTo(0, size.height * 0.38); // Top-left point
    path.close(); // Closes the path to form the pentagon

    // Draw the path on the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No need to repaint if nothing changes
  }
}
