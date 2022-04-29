part of 'presentation.dart';

/// A [Flow] is parent of n [Page]s.
///
/// It introduces a new navigation scope containing those [Page]s.
///
/// To inject dependencys scoped to the [Flow] into the widget tree override [providers].
///
/// To listen for [Bloc]s that are provided above the [Flow] or in [providers] override [listeners].
abstract class Flow extends StatelessWidget with Providing, Listening {
  const Flow({Key? key}) : super(key: key);

  @nonVirtual
  @override
  Widget build(BuildContext context) {
    if (listeners?.isEmpty ?? true) {
      return const AutoRouter();
    } else {
      return MultiBlocListener(
        listeners: listeners!,
        child: const AutoRouter(),
      );
    }
  }
}
