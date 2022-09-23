import 'package:flutter/material.dart';

import 'app.dart';
import 'config/flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.production,
    color: Colors.green,
    values: FlavorValues(
      baseUrl: "https://demo_prod/web_api.json",
    ),
  );
  runApp(const MyApp());
}
