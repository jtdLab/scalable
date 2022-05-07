part of 'presentation.dart';

// TODO maybe sum inter widget to not make mixins on all stateless widgets

// TODO doc
mixin Providing on StatelessWidget implements AutoRouteWrapper {
  /// The providers that get injected above this.
  List<BlocProvider> get providers => [];

  /// TODO doc
  @nonVirtual
  @override
  Widget wrappedRoute(BuildContext context, {Widget? child}) {
    if (providers.isEmpty) {
      return this;
    } else {
      return MultiBlocProvider(
        providers: providers,
        child: child ?? this,
      );
    }
  }
}

// TODO doc
mixin Listening on StatelessWidget {
  /// The listeners that listen to blocs which are injected above this or in [providers].
  List<BlocListener> get listeners => [];
}
