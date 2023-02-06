import 'dart:math' as math;
import '../../../assets/constants.dart' as constants;

import 'package:flutter/material.dart';

/// Represents a section on the progress circle
class Phase {
  int startDay;
  int endDay;
  Color color;
  Paint paint = Paint();
  double startRadians = 0;
  double sweepRadians = 0;

  Phase(this.startDay, this.endDay, this.color) {
    paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = constants.STROKE_WIDTH
      ..strokeCap = StrokeCap.round;
    startRadians = toRadians(startDay);
    sweepRadians = toRadians(endDay) - toRadians(startDay);
  }

  double toRadians(int days) {
    return 2 * math.pi * (days / 28) - math.pi / 2;
  }
}
