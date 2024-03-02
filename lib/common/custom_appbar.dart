import 'package:ftx_music/common/common.dart';

import '../utils/utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? imagePath;
  final Widget? leading;
  final String? title;
  final List<Widget> actions;
  final bool isTitleCenter;

  const CustomAppBar({
    super.key,
    this.title,
    this.actions = const [],
    this.imagePath,
    this.leading,
    required this.isTitleCenter,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.transparent,
      leading: leading == null && imagePath == null
          ? null
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: leading ?? Image.asset(imagePath!),
            ),
      title: title != null
          ? CustomText(
              text: title ?? '',
              style: AppTextTheme.textTheme.headlineLarge,
            )
          : null,
      centerTitle: isTitleCenter,
      actions: actions,
      elevation: 0,
      scrolledUnderElevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
