import 'package:flutter/material.dart';

class TodoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const TodoAppBar({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(title: title == null ? null : Text(title!, style: theme.textTheme.titleLarge), centerTitle: true);
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
