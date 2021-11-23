import 'package:flutter/foundation.dart';

import 'package:disposables/disposables.dart';

extension ListenableExtension on Listenable {
  Disposable addDisposableListener(VoidCallback callback) {
    addListener(callback);
    return Disposable.sync(this, () => removeListener(callback));
  }
}

extension ValueNotifierExtension<T> on ValueNotifier<T> {
  Disposable get disposable => Disposable.sync(this, dispose);

  ValueNotifier<T> disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ChangeNotifierExtension on ChangeNotifier {
  Disposable get disposable => Disposable.sync(this, dispose);

  ChangeNotifier disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}
