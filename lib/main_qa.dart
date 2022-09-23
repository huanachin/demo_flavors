import 'package:flutter/material.dart';

import 'app.dart';
import 'config/flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.qa,
    color: Colors.deepPurpleAccent,
    values: FlavorValues(
      baseUrl: "https://demo_qa/web_api.json",
    ),
  );
  runApp(const MyApp());
}
