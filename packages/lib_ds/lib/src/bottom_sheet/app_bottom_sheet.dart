import 'package:flutter/material.dart';

Future<T?> showAppModalWidget<T>({
  required BuildContext context,
  EdgeInsets? padding,
  AnimationController? controller,
  bool enableDismiss = true,
  required List<Widget> child,
}) async {
  final showDragHandle = enableDismiss;
  return showModalBottomSheet(
    context: context,
    transitionAnimationController: controller,
    isScrollControlled: true,
    isDismissible: enableDismiss,
    showDragHandle: showDragHandle,
    enableDrag: showDragHandle,
    useSafeArea: false,

    builder: (context) => Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: ListView(shrinkWrap: true, children: child),
      ),
    ),
  );
}
