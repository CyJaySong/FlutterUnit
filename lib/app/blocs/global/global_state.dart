import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
/// create by 张风捷特烈 on 2020-04-11
/// contact me by email 1981462002@qq.com
/// 说明: 全局状态类
///
class AppState extends Equatable {
  final bool initialized;

  /// [fontFamily] 文字字体
  final String fontFamily;

  /// [themeColor] 主题色
  final MaterialColor themeColor;

  /// [showBackGround] 是否显示主页背景图
  final bool showBackGround;

  /// [codeStyleIndex] 代码样式 索引
  final int codeStyleIndex;

  /// [itemStyleIndex] 主页item样式 索引
  final int itemStyleIndex;

  /// [showPerformanceOverlay] 是否显示性能浮层
  final bool showPerformanceOverlay;

  const AppState({
    this.fontFamily = 'ComicNeue',
    this.initialized = false,
    this.themeColor = Colors.blue,
    this.showBackGround = true,
    this.codeStyleIndex = 0,
    this.itemStyleIndex = 0,
    this.showPerformanceOverlay = false,
  });

  @override
  List<Object> get props =>
      [
        fontFamily,
        initialized,
        themeColor,
        showBackGround,
        codeStyleIndex,
        itemStyleIndex,
        showPerformanceOverlay
      ];

  AppState copyWith({
    double? height,
    String? fontFamily,
    MaterialColor? themeColor,
    bool? showBackGround,
    int? codeStyleIndex,
    int? itemStyleIndex,
    bool? showPerformanceOverlay,
    bool? initialized,
  }) =>
      AppState(
        fontFamily: fontFamily ?? this.fontFamily,
        themeColor: themeColor ?? this.themeColor,
        showBackGround: showBackGround ?? this.showBackGround,
        codeStyleIndex: codeStyleIndex ?? this.codeStyleIndex,
        itemStyleIndex: itemStyleIndex ?? this.itemStyleIndex,
        showPerformanceOverlay:
            showPerformanceOverlay ?? this.showPerformanceOverlay,
        initialized: initialized ?? this.initialized,
      );

  @override
  String toString() {
    return 'AppState{fontFamily: $fontFamily, themeColor: $themeColor, showBackGround: $showBackGround, codeStyleIndex: $codeStyleIndex, itemStyleIndex: $itemStyleIndex, showPerformanceOverlay: $showPerformanceOverlay}';
  }
}
