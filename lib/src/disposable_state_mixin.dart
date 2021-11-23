import 'package:flutter/material.dart';
import 'package:disposables/disposables.dart';

mixin DisposableStateMixin<T extends StatefulWidget> on State<T> implements DisposableMixin {
  final DisposableBag _syncBag = Disposable.createSyncBag();
  final DisposableBag _syncLateBag = Disposable.createSyncBag();

  final DisposableBag _asyncBag = Disposable.createAsyncBag();
  final DisposableBag _asyncLateBag = Disposable.createAsyncBag();

  bool _isDisposing = false;

  @override
  bool get isDisposing => _isDisposing;

  @mustCallSuper
  @override
  void dispose() async {
    print('DisposableBagStateMixin dispose()');
    _isDisposing = true;
    try {
      _syncBag.dispose();
      _syncLateBag.dispose();
    } catch (_) {
      _isDisposing = false;
      rethrow;
    } finally {
      super.dispose();
    }

    try {
      await _asyncBag.dispose();
      await _asyncLateBag.dispose();
    } finally {
      _isDisposing = false;
    }
  }

  @override
  void autoDispose(Disposable disposable) {
    print('autoDispose(Disposable: ${disposable.runtimeType})');
    if (disposable.isAsync) {
      if (disposable.source is ChangeNotifier) {
        _asyncLateBag.add(disposable);
      } else {
        _asyncBag.add(disposable);
      }
    } else {
      if (disposable.source is ChangeNotifier) {
        _syncLateBag.add(disposable);
      } else {
        _syncBag.add(disposable);
      }
    }
  }
}
