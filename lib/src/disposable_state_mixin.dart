import 'package:flutter/material.dart';
import 'package:disposables/disposables.dart';

mixin DisposableStateMixin<T extends StatefulWidget> on State<T> implements DisposableMixin {
  final DisposableBag _bag = DisposableBag();
  final DisposableBag _lateBag = DisposableBag();
  bool _isDisposing = false;

  @override
  bool get isDisposing => _isDisposing;

  @mustCallSuper
  @override
  void dispose() async {
    print('DisposableStateMixin dispose()');
    _isDisposing = true;
    try {
      await _bag.dispose();
      await _lateBag.dispose();
    } catch (_) {
      _isDisposing = false;
      rethrow;
    } finally {
      super.dispose();
    }
  }

  @override
  void autoDispose(Disposable disposable) {
    print('DisposableStateMixin.autoDispose(Disposable: ${disposable.runtimeType})');
    if (disposable.source is ChangeNotifier) {
      _lateBag.add(disposable);
    } else {
      _bag.add(disposable);
    }
  }
}
