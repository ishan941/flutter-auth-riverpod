import 'package:flutter/material.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';
import 'package:nepstayapp/core/utils/nef_text_util.dart';

class NefAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget>? actions;
  final bool showBackButton;
  final bool showBackText;
  final VoidCallback? onFilterPressed;
  final VoidCallback? onDownloadPressed;
  final VoidCallback? onProfilePressed;
  final VoidCallback? onBackButtonPressed;
  final int? count;

  NefAppBar({
    Key? key,
    required this.title,
    this.count,
    this.backgroundColor = Colors.blue,
    this.actions,
    this.onDownloadPressed,
    this.showBackButton = true,
    this.onFilterPressed,
    this.onBackButtonPressed,
    this.onProfilePressed,
    this.showBackText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title, style: const TextStyle(color: Colors.white)),
      backgroundColor: primaryColor,
      automaticallyImplyLeading: false,
      leadingWidth: 100,
      leading: showBackButton
          ? Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                    size: NefSpacing.spacing5,
                  ),
                  onPressed:
                      onBackButtonPressed ?? () => Navigator.of(context).pop(),
                ),
                if (showBackText)
                  const Text(
                    "Back",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
              ],
            )
          : null,
      actions: [
        ...?actions,
        if (onFilterPressed != null)
          IconButton(
            icon: const Icon(Icons.format_align_right, color: Colors.white),
            onPressed: onFilterPressed,
          ),
        if (onDownloadPressed != null)
          IconButton(
            icon: const Icon(Icons.download_sharp, color: Colors.white),
            onPressed: onDownloadPressed,
          ),
        if (onProfilePressed != null)
          NefPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Stack(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                  onPressed: onProfilePressed,
                ),
                if (count != null &&
                    count! > 0) // Fix notification badge condition
                  Positioned(
                    right: 2,
                    top: 2,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Center(
                        child: NefTextUtil(
                          text: "$count",
                          textColor: whiteColor,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class RidAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget>? actions;
  final bool showBackButton;
  final bool showBackText;
  final VoidCallback? onFilterPressed;
  final VoidCallback? onDownloadPressed;
  final VoidCallback? onProfilePressed;
  final VoidCallback? onBackButtonPressed;
  final int? count;

  RidAppBar({
    Key? key,
    required this.title,
    this.count,
    this.backgroundColor = Colors.blue,
    this.actions,
    this.onDownloadPressed,
    this.showBackButton = true,
    this.onFilterPressed,
    this.onBackButtonPressed,
    this.onProfilePressed,
    this.showBackText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title, style: const TextStyle(color: Colors.black)),
      backgroundColor: whiteColor,
      automaticallyImplyLeading: false,
      leadingWidth: 100,
      elevation: 0,
      leading: showBackButton
          ? Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                    size: NefSpacing.spacing5,
                  ),
                  onPressed:
                      onBackButtonPressed ?? () => Navigator.of(context).pop(),
                ),
                if (showBackText)
                  const Text(
                    "Back",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
              ],
            )
          : null,
      actions: [
        ...?actions,
        if (onFilterPressed != null)
          IconButton(
            icon: const Icon(Icons.format_align_right, color: Colors.white),
            onPressed: onFilterPressed,
          ),
        if (onDownloadPressed != null)
          IconButton(
            icon: const Icon(Icons.download_sharp, color: Colors.white),
            onPressed: onDownloadPressed,
          ),
        if (onProfilePressed != null)
          NefPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Stack(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                  onPressed: onProfilePressed,
                ),
                if (count != null &&
                    count! > 0) // Fix notification badge condition
                  Positioned(
                    right: 2,
                    top: 2,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Center(
                        child: NefTextUtil(
                          text: "$count",
                          textColor: whiteColor,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
