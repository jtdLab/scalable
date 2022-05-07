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
    if (listeners.isEmpty) {
      return const AutoRouter();
    } else {
      return MultiBlocListener(
        listeners: listeners,
        child: const AutoRouter(),
      );
    }
  }
}

/* abstract class Flow1<A extends Bloc> extends StatelessWidget
    with Providing, Listening {
  final A bloc;

  const Flow1({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  @override
  List<BlocProvider> get providers => [
        BlocProvider<A>(create: (_) => bloc),
      ];

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

abstract class Flow2<A extends Bloc, B extends Bloc> extends StatelessWidget
    with Providing, Listening {
  final A bloc;
  final B bloc1;

  const Flow2({
    Key? key,
    required this.bloc,
    required this.bloc1,
  }) : super(key: key);

  @override
  List<BlocProvider> get providers => [
        BlocProvider<A>(create: (_) => bloc),
        BlocProvider<B>(create: (_) => bloc1),
      ];

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

abstract class Flow3<A extends Bloc, B extends Bloc, C extends Bloc>
    extends StatelessWidget with Providing, Listening {
  final A bloc;
  final B bloc1;
  final C bloc2;

  const Flow3({
    Key? key,
    required this.bloc,
    required this.bloc1,
    required this.bloc2,
  }) : super(key: key);

  @override
  List<BlocProvider> get providers => [
        BlocProvider<A>(create: (_) => bloc),
        BlocProvider<B>(create: (_) => bloc1),
        BlocProvider<C>(create: (_) => bloc2),
      ];

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

abstract class Flow4<A extends Bloc, B extends Bloc, C extends Bloc,
    D extends Bloc> extends StatelessWidget with Providing, Listening {
  final A bloc;
  final B bloc1;
  final C bloc2;
  final D bloc3;

  const Flow4({
    Key? key,
    required this.bloc,
    required this.bloc1,
    required this.bloc2,
    required this.bloc3,
  }) : super(key: key);

  @override
  List<BlocProvider> get providers => [
        BlocProvider<A>(create: (_) => bloc),
        BlocProvider<B>(create: (_) => bloc1),
        BlocProvider<C>(create: (_) => bloc2),
        BlocProvider<D>(create: (_) => bloc3),
      ];

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

abstract class Flow5<
    A extends Bloc,
    B extends Bloc,
    C extends Bloc,
    D extends Bloc,
    E extends Bloc> extends StatelessWidget with Providing, Listening {
  final A bloc;
  final B bloc1;
  final C bloc2;
  final D bloc3;
  final E bloc4;

  const Flow5({
    Key? key,
    required this.bloc,
    required this.bloc1,
    required this.bloc2,
    required this.bloc3,
    required this.bloc4,
  }) : super(key: key);

  @override
  List<BlocProvider> get providers => [
        BlocProvider<A>(create: (_) => bloc),
        BlocProvider<B>(create: (_) => bloc1),
        BlocProvider<C>(create: (_) => bloc2),
        BlocProvider<D>(create: (_) => bloc3),
        BlocProvider<E>(create: (_) => bloc4),
      ];

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

abstract class Flow6<
    A extends Bloc,
    B extends Bloc,
    C extends Bloc,
    D extends Bloc,
    E extends Bloc,
    F extends Bloc> extends StatelessWidget with Providing, Listening {
  final A bloc;
  final B bloc1;
  final C bloc2;
  final D bloc3;
  final E bloc4;
  final F bloc5;

  const Flow6({
    Key? key,
    required this.bloc,
    required this.bloc1,
    required this.bloc2,
    required this.bloc3,
    required this.bloc4,
    required this.bloc5,
  }) : super(key: key);

  @override
  List<BlocProvider> get providers => [
        BlocProvider<A>(create: (_) => bloc),
        BlocProvider<B>(create: (_) => bloc1),
        BlocProvider<C>(create: (_) => bloc2),
        BlocProvider<D>(create: (_) => bloc3),
        BlocProvider<E>(create: (_) => bloc4),
        BlocProvider<F>(create: (_) => bloc5),
      ];

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
 */