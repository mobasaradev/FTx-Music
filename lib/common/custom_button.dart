import 'package:flutter/material.dart';

import '../utils/utils.dart';


class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String? icon;
  final String? title;
  final bool? isSoft;
  final bool? isBorder;
  final IconData? leadingIcon;
  final double? borderRadius;
  final Color? borderColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool? isLoading;
  final IconData? buttonIcon;
  final Color? iconsColor;
  final Color? loadingIndicatorColor;
  final bool? isGradient;
  final String? svgIcon;

  const CustomButton({
    super.key,
    this.onTap,
    this.icon,
    this.title,
    this.isSoft,
    this.isBorder,
    this.leadingIcon,
    this.borderRadius,
    this.borderColor,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.isLoading,
    this.buttonIcon,
    this.iconsColor,
    this.loadingIndicatorColor,
    this.isGradient,
    this.svgIcon,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * .9,
        decoration: BoxDecoration(
          gradient: isGradient == true ? customGradient() : null,
          color: isBorder == true || isGradient == true
              ? null
              : isSoft == true
                  ? Theme.of(context).primaryColor.withOpacity(.2)
                  : Theme.of(context).primaryColor,
          border: isBorder == true
              ? Border.all(
                  color: borderColor ??
                      Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  width: 1.5,
                )
              : null,
          borderRadius: BorderRadius.circular(borderRadius ?? 50),
        ),
        child: isLoading == true
            ? Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: CircularProgressIndicator(
                        color: loadingIndicatorColor ??
                            Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Loading...',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: isBorder == true
                                ? Theme.of(context).colorScheme.primary
                                : isSoft == true
                                    ? textColor ??
                                        Theme.of(context).primaryColor
                                    : textColor ??
                                        Theme.of(context)
                                            .scaffoldBackgroundColor,
                          ),
                    ),
                  ],
                ),
              )
            : buttonIcon != null
                ? Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title ?? '',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: isBorder == true
                                        ? Theme.of(context)
                                            .primaryColorDark
                                            .withOpacity(0.2)
                                        : isSoft == true
                                            ? textColor ??
                                                Theme.of(context).primaryColor
                                            : textColor ??
                                                Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                  ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: Icon(
                            buttonIcon,
                            color: iconsColor ??
                                Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ],
                    ),
                  )
                : leadingIcon != null
                    ? Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: Icon(
                                leadingIcon,
                                color: iconsColor ??
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                            ),
                            Text(
                              title ?? '',
                              style: TextStyle(
                                color: isBorder == true
                                    ? Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.2)
                                    : isSoft == true
                                        ? textColor ??
                                            Theme.of(context).primaryColor
                                        : textColor ??
                                            Theme.of(context)
                                                .scaffoldBackgroundColor,
                                fontSize: fontSize ?? 17,
                                fontWeight: fontWeight ?? FontWeight.w600,
                              ),
                            ),
                            const SizedBox()
                          ],
                        ),
                      )
                    : svgIcon != null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  svgIcon!,
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(width: title == '' ? 0 : 10),
                                Text(
                                  title ?? '',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        color: isBorder == true
                                            ? Theme.of(context).primaryColorDark
                                            : isSoft == true
                                                ? textColor ??
                                                    Theme.of(context)
                                                        .primaryColor
                                                : textColor ??
                                                    Theme.of(context)
                                                        .scaffoldBackgroundColor,
                                      ),
                                ),
                              ],
                            ),
                          )
                        : Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 15,
                              ),
                              child: Text(
                                title ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      color: isBorder == true
                                          ? Theme.of(context).primaryColorDark
                                          : isSoft == true
                                              ? textColor ??
                                                  Theme.of(context).primaryColor
                                              : textColor ??
                                                  Theme.of(context)
                                                      .scaffoldBackgroundColor,
                                    ),
                              ),
                            ),
                          ),
      ),
    );
  }
}
