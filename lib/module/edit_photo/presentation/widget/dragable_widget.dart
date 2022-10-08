import 'package:flutter/material.dart';
import 'package:photo_editor/module/edit_photo/model/dragable_widget_child.dart';

class DragableWidget extends StatelessWidget {
  DragableWidget({
    super.key,
    required this.widgetId,
    required this.child,
    this.onPress,
    this.onLongPress,
  });

  final int widgetId;

  /// we font set the child as final
  /// so when we edit we can replace this with we child
  DragableWidgetChild child;
  final void Function(int, DragableWidgetChild)? onPress;
  final void Function(int)? onLongPress;
  final ValueNotifier<Offset> possition = ValueNotifier<Offset>(Offset.zero);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Offset>(
      key: UniqueKey(),
      valueListenable: possition,
      builder: (context, value, child) {
        return Transform(
          transform: Matrix4.identity()
            ..translate(
              value.dx,
              value.dy,
            ),
          child: child,
        );
      },
      child: GestureDetector(
        key: UniqueKey(),
        onTap: () {
          onPress?.call(widgetId, child);
        },
        onLongPress: () {
          onLongPress?.call(widgetId);
        },
        onPanUpdate: (details) {
          possition.value += details.delta;
        },
        child: _buildChild(child),
      ),
    );
  }

  Widget _buildChild(DragableWidgetChild child) {
    if (child is DragableWidgetTextChild) {
      return Text(
        child.text,
        key: UniqueKey(),
        textAlign: child.textAlign,
        style: child.textStyle?.copyWith(
          fontSize: child.fontSize,
          color: child.color,
          fontStyle: child.fontStyle,
          fontWeight: child.fontWeight,
        ),
      );
    }
    return Container();
  }
}
