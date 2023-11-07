/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Manrope-Bold.ttf
  String get manropeBold => 'assets/fonts/Manrope-Bold.ttf';

  /// File path: assets/fonts/Manrope-Regular.ttf
  String get manropeRegular => 'assets/fonts/Manrope-Regular.ttf';

  /// File path: assets/fonts/Manrope-VariableFont_wght.ttf
  String get manropeVariableFontWght =>
      'assets/fonts/Manrope-VariableFont_wght.ttf';

  /// List of all assets
  List<String> get values =>
      [manropeBold, manropeRegular, manropeVariableFontWght];
}

class $AssetsPngsGen {
  const $AssetsPngsGen();

  /// File path: assets/pngs/blue_bag.png
  AssetGenImage get blueBag => const AssetGenImage('assets/pngs/blue_bag.png');

  /// File path: assets/pngs/john_wick.png
  AssetGenImage get johnWick =>
      const AssetGenImage('assets/pngs/john_wick.png');

  /// File path: assets/pngs/john_wick_photo.png
  AssetGenImage get johnWickPhoto =>
      const AssetGenImage('assets/pngs/john_wick_photo.png');

  /// File path: assets/pngs/john_wick_text.png
  AssetGenImage get johnWickText =>
      const AssetGenImage('assets/pngs/john_wick_text.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [blueBag, johnWick, johnWickPhoto, johnWickText];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/app_logo.svg
  SvgGenImage get appLogo => const SvgGenImage('assets/svgs/app_logo.svg');

  /// File path: assets/svgs/disk_icon.svg
  SvgGenImage get diskIcon => const SvgGenImage('assets/svgs/disk_icon.svg');

  /// File path: assets/svgs/heart_icon.svg
  SvgGenImage get heartIcon => const SvgGenImage('assets/svgs/heart_icon.svg');

  /// File path: assets/svgs/home_icon.svg
  SvgGenImage get homeIcon => const SvgGenImage('assets/svgs/home_icon.svg');

  /// File path: assets/svgs/human_icon.svg
  SvgGenImage get humanIcon => const SvgGenImage('assets/svgs/human_icon.svg');

  /// File path: assets/svgs/search_icon.svg
  SvgGenImage get searchIcon =>
      const SvgGenImage('assets/svgs/search_icon.svg');

  /// File path: assets/svgs/tv_icon.svg
  SvgGenImage get tvIcon => const SvgGenImage('assets/svgs/tv_icon.svg');

  /// File path: assets/svgs/up_arrow_icon.svg
  SvgGenImage get upArrowIcon =>
      const SvgGenImage('assets/svgs/up_arrow_icon.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        appLogo,
        diskIcon,
        heartIcon,
        homeIcon,
        humanIcon,
        searchIcon,
        tvIcon,
        upArrowIcon
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsPngsGen pngs = $AssetsPngsGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
