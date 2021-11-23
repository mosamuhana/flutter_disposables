import 'package:flutter/animation.dart';

import 'package:disposables/disposables.dart';

extension AnimationEagerListenerMixinExtension on AnimationEagerListenerMixin {
  Disposable get disposable => Disposable.sync(this, dispose);

  AnimationEagerListenerMixin disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}
