import 'package:flutter/material.dart';

extension ConEx on BuildContext {
  double get contextHeight => MediaQuery.sizeOf(this).height;
  double get contextWidth => MediaQuery.sizeOf(this).height;
}
