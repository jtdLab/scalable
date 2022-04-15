part of 'presentation.dart';

/// A [Page] is parent of one view [V].
///
/// To inject dependencys scoped to the [Page] into the widget tree override [providers].
///
/// To listen for [Bloc]s that are provided above the [Page] or in [providers] override [listeners].
abstract class Page<V extends View> extends StatelessWidget
    with Providing, Listening, Building<V> {
  const Page({Key? key}) : super(key: key);

  @nonVirtual
  @override
  V build(BuildContext context) => view;
}

/// A [View] is child of one [Page].
///
/// It contains the content.
abstract class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);
}
