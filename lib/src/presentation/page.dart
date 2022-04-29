part of 'presentation.dart';

/// A [Page] is parent of one view [V].
///
/// To inject dependencys scoped to the [Page] into the widget tree override [providers].
///
/// To listen for [Bloc]s that are provided above the [Page] or in [providers] override [listeners].
abstract class Page<V extends View> extends StatelessWidget
    with Providing, Listening {
  const Page({Key? key}) : super(key: key);

  V get view;

  @nonVirtual
  @override
  Widget build(BuildContext context) {
    if (listeners?.isEmpty ?? true) {
      return view;
    } else {
      return MultiBlocListener(
        listeners: listeners!,
        child: view,
      );
    }
  }
}

/// A [View] is child of one [Page].
///
/// It contains the content.
abstract class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);
}

/* abstract class Page1<V extends View, A extends Bloc> extends Widget
    implements AutoRouteWrapper {
  final V view;

  final A bloc;

  final List<BlocListener>? listeners;

  const Page1({
    Key? key,
    required this.bloc,
    required this.view,
    this.listeners,
  }) : super(key: key, child: view);

  @override
  Widget wrappedRoute(BuildContext context) {
    final providers = [
      BlocProvider<A>(create: (_) => bloc),
    ];

    if (providers.isEmpty) {
      return this;
    } else {
      return MultiBlocProvider(
        providers: providers,
        child: this,
      );
    }
  }
}

abstract class Page6<
    V extends View,
    A extends Bloc,
    B extends Bloc,
    C extends Bloc,
    D extends Bloc,
    E extends Bloc,
    F extends Bloc> extends Widget implements AutoRouteWrapper {
  final V view;

  final A bloc;
  final B bloc2;
  final C bloc3;
  final D bloc4;
  final E bloc5;
  final F bloc6;

  const Page6({
    Key? key,
    required this.bloc,
    required this.bloc2,
    required this.bloc3,
    required this.bloc4,
    required this.bloc5,
    required this.bloc6,
    required this.view,
  }) : super(key: key, child: view);

  @override
  Widget wrappedRoute(BuildContext context) {
    final providers = [
      BlocProvider<A>(create: (_) => bloc),
      BlocProvider<B>(create: (_) => bloc2),
      BlocProvider<C>(create: (_) => bloc3),
      BlocProvider<D>(create: (_) => bloc4),
      BlocProvider<E>(create: (_) => bloc5),
      BlocProvider<F>(create: (_) => bloc6),
    ];

    if (providers.isEmpty) {
      return this;
    } else {
      return MultiBlocProvider(
        providers: providers,
        child: this,
      );
    }
  }
}
 */