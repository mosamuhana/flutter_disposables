import 'package:flutter/painting.dart';

import 'package:disposables/disposables.dart';

extension BoxPainterExtension on BoxPainter {
  Disposable get disposable => Disposable.sync(this, dispose);

  BoxPainter disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension DecorationImagePainterExtension on DecorationImagePainter {
  Disposable get disposable => Disposable.sync(this, dispose);

  DecorationImagePainter disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ImageInfoExtension on ImageInfo {
  Disposable get disposable => Disposable.sync(this, dispose);

  ImageInfo disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ImageStreamCompleterHandleExtension on ImageStreamCompleterHandle {
  Disposable get disposable => Disposable.sync(this, dispose);

  ImageStreamCompleterHandle disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}
