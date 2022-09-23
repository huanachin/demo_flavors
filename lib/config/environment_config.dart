class EnvironmentConfig {
  static const bareUrl = String.fromEnvironment('BASE_URL', defaultValue: "Not defined");
  static const apiKey = String.fromEnvironment('API_KEY', defaultValue: "Not defined");
}
