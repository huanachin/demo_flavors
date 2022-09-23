import 'package:flutter/material.dart';

import 'app.dart';
import 'config/flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    color: Colors.blue,
    values: FlavorValues(
      baseUrl: "https://demo_dev/web_api.json",
    ),
  );
  runApp(const MyApp());
}
