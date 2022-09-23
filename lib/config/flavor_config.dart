import 'package:flutter/material.dart';

enum Flavor { dev, qa, production }

class FlavorValues {
  final String baseUrl;

  FlavorValues({required this.baseUrl});
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final Color color;
  final FlavorValues values;

  static FlavorConfig? _instance;

  factory FlavorConfig({
    required Flavor flavor,
    Color color = Colors.blue,
    required FlavorValues values,
  }) {
    _instance ??= FlavorConfig._internal(
      flavor,
      flavor.toString(),
      color,
      values,
    );
    return _instance!;
  }

  FlavorConfig._internal(this.flavor, this.name, this.color, this.values);

  static FlavorConfig get instance {
    return _instance!;
  }

  static bool isProduction() => instance.flavor == Flavor.production;

  static bool isDevelopment() => instance.flavor == Flavor.dev;

  static bool isQA() => instance.flavor == Flavor.qa;
}
