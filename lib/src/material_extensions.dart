import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/services.dart';

import 'package:disposables/disposables.dart';

extension WidgetsBindingExtension on WidgetsBinding {
  Disposable addDisposableObserver<T extends WidgetsBinding>(WidgetsBindingObserver observer) {
    addObserver(observer);
    return Disposable.sync(this, () {
      removeObserver(observer);
    });
  }
}

extension TabControllerExtension on TabController {
  Disposable get disposable => Disposable.sync(this, dispose);

  TabController disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension FocusNodeExtension on FocusNode {
  Disposable get disposable => Disposable.sync(this, dispose);

  FocusNode disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ScrollControllerExtension on ScrollController {
  Disposable get disposable => Disposable.sync(this, dispose);

  ScrollController disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension TextEditingControllerExtension on TextEditingController {
  Disposable get disposable => Disposable.sync(this, dispose);

  TextEditingController disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension DisposableBuildContextExtension on DisposableBuildContext {
  Disposable get disposable => Disposable.sync(this, dispose);

  DisposableBuildContext disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension GestureRecognizerExtension on GestureRecognizer {
  Disposable get disposable => Disposable.sync(this, dispose);

  GestureRecognizer disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension RestorationBucketExtension on RestorationBucket {
  Disposable get disposable => Disposable.sync(this, dispose);

  RestorationBucket disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ScrollActivityExtension on ScrollActivity {
  Disposable get disposable => Disposable.sync(this, dispose);

  ScrollActivity disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ScrollDragControllerExtension on ScrollDragController {
  Disposable get disposable => Disposable.sync(this, dispose);

  ScrollDragController disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension SemanticsHandleExtension on SemanticsHandle {
  Disposable get disposable => Disposable.sync(this, dispose);

  SemanticsHandle disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension TickerExtension on Ticker {
  Disposable get disposable => Disposable.sync(this, dispose);

  Ticker disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}


/*
extension StateExtension<T extends StatefulWidget> on State<T> {
  SyncDisposable asDisposable() => Disposable.value(this, dispose);

  State<T> disposeWith(DisposableBag bag) {
    bag.add(asDisposable());
    return this;
  }

  State<T> disposeBy(DisposableBagMixinBase m) {
    m.autoDispose(asDisposable());
    return this;
  }
}
*/
