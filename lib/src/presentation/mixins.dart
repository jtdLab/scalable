part of 'presentation.dart';

// TODO maybe sum inter widget to not make mixins on all stateless widgets

// TODO doc
mixin Providing on StatelessWidget implements AutoRouteWrapper {
  /// The providers that get injected above this.
  List<BlocProvider> get providers => [];

  /// Injects [providers] above this.
  ///
  /// ***Do not override***.
  @nonVirtual
  @override
  Widget wrappedRoute(BuildContext context) {
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

// TODO doc
mixin Listening on StatelessWidget {
  /// The listeners that listen to blocs which are injected above this or in [providers].
  List<BlocListener> get listeners => [];
}

// TODO doc
mixin Building<V extends View> on StatelessWidget {
  /// The view of this.
  V get view;
}
