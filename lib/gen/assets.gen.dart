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

  /// File path: assets/images/Aboutus.png
  AssetGenImage get aboutus => const AssetGenImage('assets/images/Aboutus.png');

  /// File path: assets/images/Bag.png
  AssetGenImage get bag => const AssetGenImage('assets/images/Bag.png');

  /// File path: assets/images/Group 218.png
  AssetGenImage get group218 =>
      const AssetGenImage('assets/images/Group 218.png');

  /// File path: assets/images/Group 273.png
  AssetGenImage get group273 =>
      const AssetGenImage('assets/images/Group 273.png');

  /// File path: assets/images/Group.png
  AssetGenImage get group => const AssetGenImage('assets/images/Group.png');

  /// File path: assets/images/Info Square.png
  AssetGenImage get infoSquare =>
      const AssetGenImage('assets/images/Info Square.png');

  /// File path: assets/images/Lock.png
  AssetGenImage get lock => const AssetGenImage('assets/images/Lock.png');

  /// File path: assets/images/LogOut.png
  AssetGenImage get logOut => const AssetGenImage('assets/images/LogOut.png');

  /// File path: assets/images/Logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/Logo.png');

  /// File path: assets/images/Settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/images/Settings.png');

  /// File path: assets/images/Ticket.png
  AssetGenImage get ticket => const AssetGenImage('assets/images/Ticket.png');

  /// File path: assets/images/candy.png
  AssetGenImage get candy => const AssetGenImage('assets/images/candy.png');

  /// File path: assets/images/cc.png
  AssetGenImage get cc => const AssetGenImage('assets/images/cc.png');

  /// File path: assets/images/choclate.jpg
  AssetGenImage get choclate =>
      const AssetGenImage('assets/images/choclate.jpg');

  /// File path: assets/images/choclate2.jpg
  AssetGenImage get choclate2 =>
      const AssetGenImage('assets/images/choclate2.jpg');

  /// File path: assets/images/choclate3.jpg
  AssetGenImage get choclate3 =>
      const AssetGenImage('assets/images/choclate3.jpg');

  /// File path: assets/images/choco.jpg
  AssetGenImage get choco => const AssetGenImage('assets/images/choco.jpg');

  /// File path: assets/images/combo.jpg
  AssetGenImage get combo => const AssetGenImage('assets/images/combo.jpg');

  /// File path: assets/images/emailPrifix.png
  AssetGenImage get emailPrifix =>
      const AssetGenImage('assets/images/emailPrifix.png');

  /// File path: assets/images/filter.png
  AssetGenImage get filter => const AssetGenImage('assets/images/filter.png');

  /// File path: assets/images/google 1.png
  AssetGenImage get google1 =>
      const AssetGenImage('assets/images/google 1.png');

  /// File path: assets/images/myFav.png
  AssetGenImage get myFav => const AssetGenImage('assets/images/myFav.png');

  /// File path: assets/images/myOrders.png
  AssetGenImage get myOrders =>
      const AssetGenImage('assets/images/myOrders.png');

  /// File path: assets/images/namePrifix.png
  AssetGenImage get namePrifix =>
      const AssetGenImage('assets/images/namePrifix.png');

  /// File path: assets/images/privacy.png
  AssetGenImage get privacy => const AssetGenImage('assets/images/privacy.png');

  /// File path: assets/images/right.png
  AssetGenImage get right => const AssetGenImage('assets/images/right.png');

  /// File path: assets/images/splash_img.png
  AssetGenImage get splashImg =>
      const AssetGenImage('assets/images/splash_img.png');

  /// File path: assets/images/star 5.png
  AssetGenImage get star5 => const AssetGenImage('assets/images/star 5.png');

  /// File path: assets/images/tuffle.png
  AssetGenImage get tuffle => const AssetGenImage('assets/images/tuffle.png');

  /// File path: assets/images/wallets.png
  AssetGenImage get wallets => const AssetGenImage('assets/images/wallets.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        aboutus,
        bag,
        group218,
        group273,
        group,
        infoSquare,
        lock,
        logOut,
        logo,
        settings,
        ticket,
        candy,
        cc,
        choclate,
        choclate2,
        choclate3,
        choco,
        combo,
        emailPrifix,
        filter,
        google1,
        myFav,
        myOrders,
        namePrifix,
        privacy,
        right,
        splashImg,
        star5,
        tuffle,
        wallets
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
