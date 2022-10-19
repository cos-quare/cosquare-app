// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

extension ElevatedButtonExtension on ElevatedButton {
  copyWith({
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    MaterialStatesController? statesController,
    Widget? child,
  }) {
    return ElevatedButton(
      onPressed: onPressed ?? this.onPressed,
      onLongPress: onLongPress ?? this.onLongPress,
      onHover: onHover ?? this.onHover,
      onFocusChange: onFocusChange ?? this.onFocusChange,
      style: style ?? this.style,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      statesController: statesController ?? this.statesController,
      child: child ?? this.child,
    );
  }

  ButtonStyle _copyWith({
    MaterialStateProperty<TextStyle?>? textStyle,
    MaterialStateProperty<Color?>? backgroundColor,
    MaterialStateProperty<Color?>? foregroundColor,
    MaterialStateProperty<Color?>? overlayColor,
    MaterialStateProperty<Color?>? shadowColor,
    MaterialStateProperty<Color?>? surfaceTintColor,
    MaterialStateProperty<double?>? elevation,
    MaterialStateProperty<EdgeInsetsGeometry?>? padding,
    MaterialStateProperty<Size?>? minimumSize,
    MaterialStateProperty<Size?>? fixedSize,
    MaterialStateProperty<Size?>? maximumSize,
    MaterialStateProperty<BorderSide?>? side,
    MaterialStateProperty<OutlinedBorder?>? shape,
    MaterialStateProperty<MouseCursor?>? mouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    InteractiveInkFeatureFactory? splashFactory,
  }) {
    ButtonStyle buttonStyle = this.style ?? ElevatedButton.styleFrom();
    return ButtonStyle(
      textStyle: textStyle ?? buttonStyle.textStyle,
      backgroundColor: backgroundColor ?? buttonStyle.backgroundColor,
      foregroundColor: foregroundColor ?? buttonStyle.foregroundColor,
      overlayColor: overlayColor ?? buttonStyle.overlayColor,
      shadowColor: shadowColor ?? buttonStyle.shadowColor,
      surfaceTintColor: surfaceTintColor ?? buttonStyle.surfaceTintColor,
      elevation: elevation ?? buttonStyle.elevation,
      padding: padding ?? buttonStyle.padding,
      minimumSize: minimumSize ?? buttonStyle.minimumSize,
      fixedSize: fixedSize ?? buttonStyle.fixedSize,
      maximumSize: maximumSize ?? buttonStyle.maximumSize,
      side: side ?? buttonStyle.side,
      shape: shape ?? buttonStyle.shape,
      mouseCursor: mouseCursor ?? buttonStyle.mouseCursor,
      visualDensity: visualDensity ?? buttonStyle.visualDensity,
      tapTargetSize: tapTargetSize ?? buttonStyle.tapTargetSize,
      animationDuration: animationDuration ?? buttonStyle.animationDuration,
      enableFeedback: enableFeedback ?? buttonStyle.enableFeedback,
      alignment: alignment ?? buttonStyle.alignment,
      splashFactory: splashFactory ?? buttonStyle.splashFactory,
    );
  }

  height50() {
    return this.copyWith(
        style: this._copyWith(
      minimumSize: MaterialStateProperty.all(const Size.fromHeight(50.0)),
    ));
  }
}
