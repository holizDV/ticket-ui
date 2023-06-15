part of config;

enum DebugMode { debugOnly, debugLayout }

class BuildConfig {
  final DebugMode debugMode;

  BuildConfig._({
    required this.debugMode,
  });

  BuildConfig._dev({required DebugMode debugMode})
      : this._(debugMode: debugMode);

  static late BuildConfig _instance;

  static void init() {
    const strDebugMode = String.fromEnvironment("DEBUG_MODE");
    const debugMode = strDebugMode == "DEBUG_LAYOUT"
        ? DebugMode.debugLayout
        : DebugMode.debugOnly;

    _instance = BuildConfig._dev(debugMode: debugMode);
  }

  static BuildConfig get() {
    return _instance;
  }

  static bool isDebugLayout() => _instance.debugMode == DebugMode.debugLayout;

  static bool isDebugOnly() => _instance.debugMode == DebugMode.debugOnly;
}
