import 'package:flutter/foundation.dart';

import 'package:disposables/disposables.dart';

extension ListenableExtension on Listenable {
  Disposable<Listenable> addDisposableListener(VoidCallback callback) {
    addListener(callback);
    return Disposable.create(() => removeListener(callback), this);
  }
}

extension ValueNotifierExtension<T> on ValueNotifier<T> {
  Disposable<ValueNotifier<T>> get disposable => Disposable.create(dispose, this);

  ValueNotifier<T> disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ChangeNotifierExtension on ChangeNotifier {
  Disposable<ChangeNotifier> get disposable => Disposable.create(dispose, this);

  ChangeNotifier disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}
