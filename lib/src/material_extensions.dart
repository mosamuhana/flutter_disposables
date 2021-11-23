import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/services.dart';

import 'package:disposables/disposables.dart';

extension WidgetsBindingExtension on WidgetsBinding {
  Disposable<WidgetsBinding> addDisposableObserver<T extends WidgetsBinding>(
    WidgetsBindingObserver observer,
  ) {
    addObserver(observer);
    return Disposable.create(() {
      removeObserver(observer);
    }, this);
  }
}

extension TabControllerExtension on TabController {
  Disposable<TabController> get disposable => Disposable.create(dispose, this);

  TabController disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension FocusNodeExtension on FocusNode {
  Disposable<FocusNode> get disposable => Disposable.create(dispose, this);

  FocusNode disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ScrollControllerExtension on ScrollController {
  Disposable<ScrollController> get disposable => Disposable.create(dispose, this);

  ScrollController disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension TextEditingControllerExtension on TextEditingController {
  Disposable<TextEditingController> get disposable => Disposable.create(dispose, this);

  TextEditingController disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension DisposableBuildContextExtension on DisposableBuildContext {
  Disposable<DisposableBuildContext> get disposable => Disposable.create(dispose, this);

  DisposableBuildContext disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension GestureRecognizerExtension on GestureRecognizer {
  Disposable<GestureRecognizer> get disposable => Disposable.create(dispose, this);

  GestureRecognizer disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension RestorationBucketExtension on RestorationBucket {
  Disposable<RestorationBucket> get disposable => Disposable.create(dispose, this);

  RestorationBucket disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ScrollActivityExtension on ScrollActivity {
  Disposable<ScrollActivity> get disposable => Disposable.create(dispose, this);

  ScrollActivity disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ScrollDragControllerExtension on ScrollDragController {
  Disposable<ScrollDragController> get disposable => Disposable.create(dispose, this);

  ScrollDragController disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension SemanticsHandleExtension on SemanticsHandle {
  Disposable<SemanticsHandle> get disposable => Disposable.create(dispose, this);

  SemanticsHandle disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension TickerExtension on Ticker {
  Disposable<Ticker> get disposable => Disposable.create(dispose, this);

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
