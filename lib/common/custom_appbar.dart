import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? imagePath;
  final Widget? leading;
  final String? title;
  final List<Widget> actions;
  final Color? backgroundColor;

  const CustomAppBar({
    Key? key,
    this.title,
    this.actions = const [],
    this.imagePath,
    this.leading,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading == null && imagePath == null
          ? null
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: leading ??
                  Image.asset(
                    imagePath!,
                  ),
            ),
      title: title != null
          ? Text(
              title!,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 25,
                  ),
            )
          : null,
      centerTitle: true,
      actions: actions,
      elevation: 0,
      scrolledUnderElevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
