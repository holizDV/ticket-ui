part of config;

abstract class Env {
  Env() {
    _init();
  }

  FutureOr<StatelessWidget> onCreate();

  void _init() {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();

      BuildConfig.init();

      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );

      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      );

      final app = await onCreate();

      if (BuildConfig.isDebugLayout()) {
        runApp(DevicePreview(
          enabled: !kReleaseMode,
          builder: (_) => app,
        ));
      } else {
        runApp(app);
      }
    }, (error, stack) {
      debugPrint("$error: $stack");
    });
  }
}
