import 'package:flutter/painting.dart';

import 'package:disposables/disposables.dart';

extension BoxPainterExtension on BoxPainter {
  Disposable<BoxPainter> get disposable => Disposable.create(dispose, this);

  BoxPainter disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension DecorationImagePainterExtension on DecorationImagePainter {
  Disposable<DecorationImagePainter> get disposable => Disposable.create(dispose, this);

  DecorationImagePainter disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ImageInfoExtension on ImageInfo {
  Disposable<ImageInfo> get disposable => Disposable.create(dispose, this);

  ImageInfo disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}

extension ImageStreamCompleterHandleExtension on ImageStreamCompleterHandle {
  Disposable<ImageStreamCompleterHandle> get disposable => Disposable.create(dispose, this);

  ImageStreamCompleterHandle disposeBy(dynamic disposer) => this..disposable.disposeBy(disposer);
}
