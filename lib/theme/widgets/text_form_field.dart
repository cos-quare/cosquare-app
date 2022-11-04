import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  String? initialValue;
  FocusNode? focusNode;
  InputDecoration? decoration = const InputDecoration();
  TextInputType? keyboardType;
  TextCapitalization textCapitalization = TextCapitalization.none;
  TextInputAction? textInputAction;
  TextStyle? style;
  StrutStyle? strutStyle;
  TextDirection? textDirection;
  TextAlign textAlign = TextAlign.start;
  TextAlignVertical? textAlignVertical;
  bool autofocus = false;
  bool readOnly = false;
  ToolbarOptions? toolbarOptions;
  bool? showCursor;
  String obscuringCharacter = '•';
  bool obscureText = false;
  bool autocorrect = true;
  SmartDashesType? smartDashesType;
  SmartQuotesType? smartQuotesType;
  bool enableSuggestions = true;
  MaxLengthEnforcement? maxLengthEnforcement;
  int? maxLines = 1;
  int? minLines;
  bool expands = false;
  int? maxLength;
  ValueChanged<String>? onChanged;
  GestureTapCallback? onTap;
  VoidCallback? onEditingComplete;
  ValueChanged<String>? onFieldSubmitted;
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  List<TextInputFormatter>? inputFormatters;
  bool? enabled;
  double cursorWidth = 2.0;
  double? cursorHeight;
  Radius? cursorRadius;
  Color? cursorColor;
  Brightness? keyboardAppearance;
  EdgeInsets scrollPadding = const EdgeInsets.all(20.0);
  bool? enableInteractiveSelection;
  TextSelectionControls? selectionControls;
  InputCounterWidgetBuilder? buildCounter;
  ScrollPhysics? scrollPhysics;
  Iterable<String>? autofillHints;
  AutovalidateMode? autovalidateMode;
  ScrollController? scrollController;
  String? restorationId;
  bool enableIMEPersonalizedLearning = true;
  MouseCursor? mouseCursor;
  DefaultTextFormField({
    Key? key,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.keyboardType,
    required this.textCapitalization,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    required this.textAlign,
    this.textAlignVertical,
    required this.autofocus,
    required this.readOnly,
    this.toolbarOptions,
    this.showCursor,
    required this.obscuringCharacter,
    required this.obscureText,
    required this.autocorrect,
    this.smartDashesType,
    this.smartQuotesType,
    required this.enableSuggestions,
    this.maxLengthEnforcement,
    this.maxLines,
    this.minLines,
    required this.expands,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.enabled,
    required this.cursorWidth,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.enableInteractiveSelection,
    this.selectionControls,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.autovalidateMode,
    this.scrollController,
    this.restorationId,
    required this.enableIMEPersonalizedLearning,
    this.mouseCursor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: this.key,
      controller: this.controller,
      initialValue: this.initialValue,
      focusNode: this.focusNode,
      keyboardType: this.keyboardType,
      textCapitalization: this.textCapitalization,
      textInputAction: this.textInputAction,
      style: this.style,
      strutStyle: this.strutStyle,
      textDirection: this.textDirection,
      textAlign: this.textAlign,
      textAlignVertical: this.textAlignVertical,
      autofocus: this.autofocus,
      readOnly: this.readOnly,
      toolbarOptions: this.toolbarOptions,
      showCursor: this.showCursor,
      obscuringCharacter: this.obscuringCharacter,
      obscureText: this.obscureText,
      autocorrect: this.autocorrect,
      smartDashesType: this.smartDashesType,
      smartQuotesType: this.smartQuotesType,
      enableSuggestions: this.enableSuggestions,
      maxLengthEnforcement: this.maxLengthEnforcement,
      maxLines: this.maxLines,
      minLines: this.minLines,
      expands: this.expands,
      maxLength: this.maxLength,
      onChanged: this.onChanged,
      onTap: this.onTap,
      onEditingComplete: this.onEditingComplete,
      onFieldSubmitted: this.onFieldSubmitted,
      onSaved: this.onSaved,
      validator: this.validator,
      inputFormatters: this.inputFormatters,
      enabled: this.enabled,
      cursorWidth: this.cursorWidth,
      cursorHeight: this.cursorHeight,
      cursorRadius: this.cursorRadius,
      cursorColor: this.cursorColor,
      keyboardAppearance: this.keyboardAppearance,
      enableInteractiveSelection: this.enableInteractiveSelection,
      selectionControls: this.selectionControls,
      buildCounter: this.buildCounter,
      scrollPhysics: this.scrollPhysics,
      autofillHints: this.autofillHints,
      autovalidateMode: this.autovalidateMode,
      scrollController: this.scrollController,
      restorationId: this.restorationId,
      enableIMEPersonalizedLearning: this.enableIMEPersonalizedLearning,
      mouseCursor: this.mouseCursor,
    );
  }
}
