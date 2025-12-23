/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/countries
  $AssetsImagesCountriesGen get countries => const $AssetsImagesCountriesGen();

  /// Directory path: assets/images/icons
  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();
}

class $AssetsImagesCountriesGen {
  const $AssetsImagesCountriesGen();

  /// File path: assets/images/countries/AN.png
  AssetGenImage get an => const AssetGenImage('assets/images/countries/AN.png');

  /// File path: assets/images/countries/BM.png
  AssetGenImage get bm => const AssetGenImage('assets/images/countries/BM.png');

  /// File path: assets/images/countries/CA.png
  AssetGenImage get ca => const AssetGenImage('assets/images/countries/CA.png');

  /// File path: assets/images/countries/CH.png
  AssetGenImage get ch => const AssetGenImage('assets/images/countries/CH.png');

  /// File path: assets/images/countries/CN.png
  AssetGenImage get cn => const AssetGenImage('assets/images/countries/CN.png');

  /// File path: assets/images/countries/HK.png
  AssetGenImage get hk => const AssetGenImage('assets/images/countries/HK.png');

  /// File path: assets/images/countries/IE.png
  AssetGenImage get ie => const AssetGenImage('assets/images/countries/IE.png');

  /// File path: assets/images/countries/Il.png
  AssetGenImage get il => const AssetGenImage('assets/images/countries/Il.png');

  /// File path: assets/images/countries/JE.png
  AssetGenImage get je => const AssetGenImage('assets/images/countries/JE.png');

  /// File path: assets/images/countries/KY.png
  AssetGenImage get ky => const AssetGenImage('assets/images/countries/KY.png');

  /// File path: assets/images/countries/KZ.png
  AssetGenImage get kz => const AssetGenImage('assets/images/countries/KZ.png');

  /// File path: assets/images/countries/LR.png
  AssetGenImage get lr => const AssetGenImage('assets/images/countries/LR.png');

  /// File path: assets/images/countries/LU.png
  AssetGenImage get lu => const AssetGenImage('assets/images/countries/LU.png');

  /// File path: assets/images/countries/NL.png
  AssetGenImage get nl => const AssetGenImage('assets/images/countries/NL.png');

  /// File path: assets/images/countries/PA.png
  AssetGenImage get pa => const AssetGenImage('assets/images/countries/PA.png');

  /// File path: assets/images/countries/US.png
  AssetGenImage get us => const AssetGenImage('assets/images/countries/US.png');

  /// File path: assets/images/countries/VG.png
  AssetGenImage get vg => const AssetGenImage('assets/images/countries/VG.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [an, bm, ca, ch, cn, hk, ie, il, je, ky, kz, lr, lu, nl, pa, us, vg];
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/compliant_icon.png
  AssetGenImage get compliantIcon =>
      const AssetGenImage('assets/images/icons/compliant_icon.png');

  /// File path: assets/images/icons/non_compliant_icon.png
  AssetGenImage get nonCompliantIcon =>
      const AssetGenImage('assets/images/icons/non_compliant_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [compliantIcon, nonCompliantIcon];
}

class AppAssets {
  AppAssets._();

  static const String package = 'assets';

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  static const String package = 'assets';

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/assets/$_assetName';
}
