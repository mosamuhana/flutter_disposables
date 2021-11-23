import 'package:flutter/animation.dart';

import 'package:disposables/disposables.dart';

extension AnimationEagerListenerMixinExtension on AnimationEagerListenerMixin {
  Disposable<AnimationEagerListenerMixin> get disposable => Disposable.create(dispose, this);

  AnimationEagerListenerMixin disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}
