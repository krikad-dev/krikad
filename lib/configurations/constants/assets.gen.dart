/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app_bar_icon.svg
  SvgGenImage get appBarIcon =>
      const SvgGenImage('assets/icons/app_bar_icon.svg');

  /// File path: assets/icons/compleated_case_workflow.svg
  SvgGenImage get compleatedCaseWorkflow =>
      const SvgGenImage('assets/icons/compleated_case_workflow.svg');

  /// File path: assets/icons/current_case_wofkflow.svg
  SvgGenImage get currentCaseWofkflow =>
      const SvgGenImage('assets/icons/current_case_wofkflow.svg');

  /// File path: assets/icons/pending_case_wofkflow.svg
  SvgGenImage get pendingCaseWofkflow =>
      const SvgGenImage('assets/icons/pending_case_wofkflow.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        appBarIcon,
        compleatedCaseWorkflow,
        currentCaseWofkflow,
        pendingCaseWofkflow
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/IIH_logo.png
  AssetGenImage get iIHLogo =>
      const AssetGenImage('assets/images/IIH_logo.png');

  /// File path: assets/images/app_icon.png
  AssetGenImage get appIcon =>
      const AssetGenImage('assets/images/app_icon.png');

  /// File path: assets/images/checkmark.png
  AssetGenImage get checkmark =>
      const AssetGenImage('assets/images/checkmark.png');

  /// File path: assets/images/iih_bg_logo.png
  AssetGenImage get iihBgLogo =>
      const AssetGenImage('assets/images/iih_bg_logo.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo_hor.png
  AssetGenImage get logoHor =>
      const AssetGenImage('assets/images/logo_hor.png');

  /// File path: assets/images/pallinos.png
  AssetGenImage get pallinos =>
      const AssetGenImage('assets/images/pallinos.png');

  /// File path: assets/images/tatparLogo.png
  AssetGenImage get tatparLogo =>
      const AssetGenImage('assets/images/tatparLogo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        iIHLogo,
        appIcon,
        checkmark,
        iihBgLogo,
        logo,
        logoHor,
        pallinos,
        tatparLogo
      ];
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/districts.json
  String get districts => 'assets/json/districts.json';

  /// List of all assets
  List<String> get values => [districts];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/form1_loading.json
  String get form1Loading => 'assets/lottie/form1_loading.json';

  /// File path: assets/lottie/form_loading.json
  String get formLoading => 'assets/lottie/form_loading.json';

  /// File path: assets/lottie/loading.json
  String get loading => 'assets/lottie/loading.json';

  /// File path: assets/lottie/registration_loading.json
  String get registrationLoading => 'assets/lottie/registration_loading.json';

  /// List of all assets
  List<String> get values =>
      [form1Loading, formLoading, loading, registrationLoading];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

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
    String? package,
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
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
