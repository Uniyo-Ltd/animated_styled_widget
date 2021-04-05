import 'package:animated_styled_widget/animated_styled_widget.dart';
import 'package:flutter/material.dart';

class StyledCheckbox extends StatelessWidget {
  final Style style;
  final Style? hoveredStyle;
  final Style? selectedStyle;
  final Style? disabledStyle;

  final Curve curve;
  final Duration duration;
  final Widget? child;
  final StyledComponentStateChildBuilder? builder;

  final bool value;

  final ValueChanged<bool>? onChanged;

  StyledCheckbox(
      {Key? key,
      required this.value,
      required this.onChanged,
      required this.style,
      this.hoveredStyle,
      this.selectedStyle,
      this.disabledStyle,
      this.curve = Curves.linear,
      this.duration = const Duration(milliseconds: 100),
      this.child,
      this.builder});

  @override
  Widget build(BuildContext context) {
    return StyledToggleable(
      child: child,
      builder: builder,
      selected: value,
      onChanged: onChanged != null
          ? () {
              onChanged!(!value);
            }
          : null,
      duration: duration,
      curve: curve,
      style: style,
      selectedStyle: selectedStyle,
      hoveredStyle: hoveredStyle,
      disabledStyle: disabledStyle,
    );
  }
}
