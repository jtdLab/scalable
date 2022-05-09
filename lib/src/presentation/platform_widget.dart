part of 'presentation.dart';

class PlatformNotSupported extends Error {
  @override
  String toString() => 'Platform not supported.';
}

/// Buildes the widget provided depending on platform the application runs on.
class PlatformWidget extends StatelessWidget {
  final Widget Function(BuildContext)? android;
  final Widget Function(BuildContext)? ios;
  final Widget Function(BuildContext)? web;
  final Widget Function(BuildContext)? macos;
  final Widget Function(BuildContext)? linux;
  final Widget Function(BuildContext)? windows;

  const PlatformWidget({
    Key? key,
    this.android,
    this.ios,
    this.web,
    this.macos,
    this.linux,
    this.windows,
  })  : assert(android != null ||
            ios != null ||
            web != null ||
            macos != null ||
            linux != null ||
            windows != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      final widget = web?.call(context);

      if (widget != null) {
        return widget;
      }
    } else {
      late final Widget? widget;
      if (Platform.isAndroid) {
        widget = android?.call(context);
      }
      if (Platform.isIOS) {
        widget = ios?.call(context);
      }
      if (Platform.isMacOS) {
        widget = macos?.call(context);
      }
      if (Platform.isLinux) {
        widget = linux?.call(context);
      }
      if (Platform.isWindows) {
        widget = windows?.call(context);
      }

      if (widget != null) {
        return widget;
      }
    }

    throw PlatformNotSupported();
  }
}
