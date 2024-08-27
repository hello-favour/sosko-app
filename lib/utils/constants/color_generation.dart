import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();

// Function to generate a lighter random color for background
Color getRandomBackgroundColor() {
  return Color.fromARGB(
    255,
    200 + random.nextInt(56), // Values from 200 to 255
    200 + random.nextInt(56),
    200 + random.nextInt(56),
  );
}

// Function to generate a darker random color for text
Color getRandomTextColor() {
  return Color.fromARGB(
    255,
    random.nextInt(100), // Values from 0 to 100
    random.nextInt(100),
    random.nextInt(100),
  );
}
