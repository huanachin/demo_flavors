import 'package:build_variants/config/environment_config.dart';
import 'package:build_variants/config/flavor_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flavors')),
      body: Center(
          child: Column(
        children: [
          const Text(
            "Flavors",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text("Flavor name: ${FlavorConfig.instance.name}"),
          Text("Base url: ${FlavorConfig.instance.values.baseUrl}"),
          const SizedBox(height: 30),
          const Text(
            "Environments variables",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text("Base url: ${EnvironmentConfig.bareUrl}"),
          const Text("API_KEY: ${EnvironmentConfig.apiKey}"),
        ],
      )),
    );
  }
}
