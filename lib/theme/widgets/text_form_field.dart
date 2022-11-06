// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum TextFieldType {
  clear,
  basic,
}

class CSTextFormField extends ConsumerStatefulWidget {
  TextFieldType type = TextFieldType.basic;
  final TextEditingController? controller;
  FocusNode? focusNode;
  String? initialValue;
  InputDecoration decoration;
  TextInputType? keyboardType;
  TextCapitalization textCapitalization;
  TextInputAction? textInputAction;
  TextStyle? style;
  StrutStyle? strutStyle;
  TextDirection? textDirection;
  TextAlign textAlign;
  TextAlignVertical? textAlignVertical;
  bool autofocus;
  bool readOnly;
  ToolbarOptions? toolbarOptions;
  bool? showCursor;
  String obscuringCharacter;
  bool obscureText;
  bool autocorrect;
  SmartDashesType? smartDashesType;
  SmartQuotesType? smartQuotesType;
  bool enableSuggestions;
  MaxLengthEnforcement? maxLengthEnforcement;
  int? maxLines;
  int? minLines;
  bool expands;
  int? maxLength;
  ValueChanged<String>? onChanged;
  GestureTapCallback? onTap;
  VoidCallback? onEditingComplete;
  ValueChanged<String>? onFieldSubmitted;
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  List<TextInputFormatter>? inputFormatters;
  bool? enabled;
  double cursorWidth;
  double? cursorHeight;
  Radius? cursorRadius;
  Color? cursorColor;
  Brightness? keyboardAppearance;
  EdgeInsets scrollPadding;
  bool? enableInteractiveSelection;
  TextSelectionControls? selectionControls;
  InputCounterWidgetBuilder? buildCounter;
  ScrollPhysics? scrollPhysics;
  Iterable<String>? autofillHints;
  AutovalidateMode? autovalidateMode;
  ScrollController? scrollController;
  String? restorationId;
  bool enableIMEPersonalizedLearning;
  MouseCursor? mouseCursor;
  CSTextFormField({
    Key? key,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection,
    this.selectionControls,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.autovalidateMode,
    this.scrollController,
    this.restorationId,
    this.enableIMEPersonalizedLearning = true,
    this.mouseCursor,
  });
  CSTextFormField.clear({
    Key? key,
    this.type = TextFieldType.clear,
    required this.controller,
    this.initialValue,
    required this.focusNode,
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection,
    this.selectionControls,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.autovalidateMode,
    this.scrollController,
    this.restorationId,
    this.enableIMEPersonalizedLearning = true,
    this.mouseCursor,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CSTextFormFieldState();
}

class _CSTextFormFieldState extends ConsumerState<CSTextFormField> {
  final isDirty = StateProvider((ref) => false);
  late final TextEditingController controller;
  late final FocusNode focusNode;
  @override
  void initState() {
    controller = widget.controller ?? TextEditingController(text: widget.initialValue);
    focusNode = widget.focusNode ?? FocusNode();
    controller.addListener(_clear);
    focusNode.addListener(_clear);
    super.initState();
  }

  void _clear() {
    if (focusNode.hasFocus && controller.text.isNotEmpty) {
      ref.read(isDirty.state).state = true;
    } else {
      ref.read(isDirty.state).state = false;
    }
  }

  @override
  void dispose() {
    controller.removeListener(_clear);
    controller.removeListener(_clear);
    if (widget.controller == null) controller.dispose();
    if (widget.focusNode == null) focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case TextFieldType.clear:
        this.widget.decoration = this.widget.decoration.copyWith(
          suffixIcon: Consumer(
            builder: (context, ref, _) {
              final _isDirty = ref.watch(isDirty.state).state;
              return _isDirty
                  ? IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: () => controller.clear(),
                    )
                  : SizedBox.shrink();
            },
          ),
        );
        break;
      case TextFieldType.basic:
      default:
        break;
    }
    return _build();
  }

  TextFormField _build() {
    return TextFormField(
      key: this.widget.key,
      controller: this.controller,
      initialValue: this.widget.initialValue,
      decoration: this.widget.decoration,
      focusNode: this.focusNode,
      keyboardType: this.widget.keyboardType,
      textCapitalization: this.widget.textCapitalization,
      textInputAction: this.widget.textInputAction,
      style: this.widget.style,
      strutStyle: this.widget.strutStyle,
      textDirection: this.widget.textDirection,
      textAlign: this.widget.textAlign,
      textAlignVertical: this.widget.textAlignVertical,
      autofocus: this.widget.autofocus,
      readOnly: this.widget.readOnly,
      toolbarOptions: this.widget.toolbarOptions,
      showCursor: this.widget.showCursor,
      obscuringCharacter: this.widget.obscuringCharacter,
      obscureText: this.widget.obscureText,
      autocorrect: this.widget.autocorrect,
      smartDashesType: this.widget.smartDashesType,
      smartQuotesType: this.widget.smartQuotesType,
      enableSuggestions: this.widget.enableSuggestions,
      maxLengthEnforcement: this.widget.maxLengthEnforcement,
      maxLines: this.widget.maxLines,
      minLines: this.widget.minLines,
      expands: this.widget.expands,
      maxLength: this.widget.maxLength,
      onChanged: this.widget.onChanged,
      onTap: this.widget.onTap,
      onEditingComplete: this.widget.onEditingComplete,
      onFieldSubmitted: this.widget.onFieldSubmitted,
      onSaved: this.widget.onSaved,
      validator: this.widget.validator,
      inputFormatters: this.widget.inputFormatters,
      enabled: this.widget.enabled,
      cursorWidth: this.widget.cursorWidth,
      cursorHeight: this.widget.cursorHeight,
      cursorRadius: this.widget.cursorRadius,
      cursorColor: this.widget.cursorColor,
      keyboardAppearance: this.widget.keyboardAppearance,
      scrollPadding: this.widget.scrollPadding,
      enableInteractiveSelection: this.widget.enableInteractiveSelection,
      selectionControls: this.widget.selectionControls,
      buildCounter: this.widget.buildCounter,
      scrollPhysics: this.widget.scrollPhysics,
      autofillHints: this.widget.autofillHints,
      autovalidateMode: this.widget.autovalidateMode,
      scrollController: this.widget.scrollController,
      restorationId: this.widget.restorationId,
      enableIMEPersonalizedLearning: this.widget.enableIMEPersonalizedLearning,
      mouseCursor: this.widget.mouseCursor,
    );
  }
}
