import 'package:flutter/material.dart';

import '../../resources/dimens/dimens.dart';
import '../../resources/styles/styles.dart';

enum CommonButtonType { filled, outlined, text, elevated, tonal, outlinedDark }

enum CommonButtonSize { small, regular }

class CommonButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String? title;
  final Widget? titleWidget;
  final IconData? icon;
  final CommonButtonType type;
  final CommonButtonSize size;
  final bool isDestructive;
  final bool isBusy;
  final IconAlignment iconAlignment;
  final bool isTranslatable;

  const CommonButton({
    super.key,
    this.onPressed,
    this.title,
    this.titleWidget,
    this.icon,
    this.type = CommonButtonType.filled,
    this.size = CommonButtonSize.regular,
    this.isDestructive = false,
    this.isBusy = false,
    this.iconAlignment = IconAlignment.start,
    this.isTranslatable = true,
  }) : assert(
         title != null || titleWidget != null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       assert(
         title == null || titleWidget == null,
         "You must provide either a title or a titleWidget, not both.",
       );

  const CommonButton.filled({
    super.key,
    this.onPressed,
    this.title,
    this.titleWidget,
    this.icon,
    this.size = CommonButtonSize.regular,
    this.isDestructive = false,
    this.isBusy = false,
    this.iconAlignment = IconAlignment.start,
    this.isTranslatable = true,
  }) : assert(
         title != null || titleWidget != null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       assert(
         title == null || titleWidget == null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       type = CommonButtonType.filled;

  const CommonButton.outlined({
    super.key,
    this.onPressed,
    this.title,
    this.titleWidget,
    this.icon,
    this.size = CommonButtonSize.regular,
    this.isDestructive = false,
    this.isBusy = false,
    this.iconAlignment = IconAlignment.start,
    this.isTranslatable = true,
  }) : assert(
         title != null || titleWidget != null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       assert(
         title == null || titleWidget == null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       type = CommonButtonType.outlined;

  const CommonButton.text({
    super.key,
    this.onPressed,
    this.title,
    this.titleWidget,
    this.icon,
    this.size = CommonButtonSize.regular,
    this.isDestructive = false,
    this.isBusy = false,
    this.iconAlignment = IconAlignment.start,
    this.isTranslatable = true,
  }) : assert(
         title != null || titleWidget != null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       assert(
         title == null || titleWidget == null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       type = CommonButtonType.text;

  const CommonButton.elevated({
    super.key,
    this.onPressed,
    this.title,
    this.titleWidget,
    this.icon,
    this.size = CommonButtonSize.regular,
    this.isDestructive = false,
    this.isBusy = false,
    this.iconAlignment = IconAlignment.start,
    this.isTranslatable = true,
  }) : assert(
         title != null || titleWidget != null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       assert(
         title == null || titleWidget == null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       type = CommonButtonType.elevated;

  const CommonButton.tonal({
    super.key,
    this.onPressed,
    this.title,
    this.titleWidget,
    this.icon,
    this.size = CommonButtonSize.regular,
    this.isDestructive = false,
    this.isBusy = false,
    this.iconAlignment = IconAlignment.start,
    this.isTranslatable = true,
  }) : assert(
         title != null || titleWidget != null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       assert(
         title == null || titleWidget == null,
         "You must provide either a title or a titleWidget, not both.",
       ),
       type = CommonButtonType.tonal;

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  final WidgetStateProperty<EdgeInsetsGeometry?>? smallPadding = WidgetStateProperty.resolveWith((
    states,
  ) {
    return const EdgeInsets.symmetric(vertical: Dimens.d6, horizontal: Dimens.sizeSpacingLG);
  });

  final WidgetStateProperty<EdgeInsetsGeometry?>? regularPadding = WidgetStateProperty.resolveWith((
    states,
  ) {
    return const EdgeInsets.symmetric(vertical: Dimens.d10, horizontal: Dimens.sizeSpacingLG);
  });

  WidgetStateProperty<Color?>? _getDestructiveBackgroundColor(BuildContext ctx) {
    return WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return null;
      }
      return AppColors(ctx).paletteError[40];
    });
  }

  WidgetStateProperty<Color?>? _getDestructiveForegroundColor(BuildContext ctx) {
    return WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return null;
      }
      return AppColors(ctx).paletteError[100];
    });
  }

  Widget _buildButton(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color disabledColor = colorScheme.onSurface.withValues(alpha: 0.38);

    switch (widget.type) {
      case CommonButtonType.filled:
        Color btnTextColor =
            widget.isDestructive
                ? AppColors(context).paletteError[100]!
                : colorScheme.onPrimaryFixedVariant;

        if (widget.onPressed == null) {
          btnTextColor = disabledColor;
        }

        return FilledButton.icon(
          iconAlignment: widget.iconAlignment,
          onPressed: widget.onPressed,
          style:
              widget.size == CommonButtonSize.small
                  ? Theme.of(context).filledButtonTheme.style?.copyWith(
                    padding: smallPadding,
                    backgroundColor:
                        widget.isDestructive ? _getDestructiveBackgroundColor(context) : null,
                    foregroundColor:
                        widget.isDestructive ? _getDestructiveForegroundColor(context) : null,
                  )
                  : widget.isDestructive
                  ? Theme.of(context).filledButtonTheme.style?.copyWith(
                    backgroundColor: _getDestructiveBackgroundColor(context),
                    foregroundColor: _getDestructiveForegroundColor(context),
                  )
                  : null,
          label:
              widget.titleWidget ??
              TitleTextWidget(
                size: widget.size,
                title: widget.title!,
                enabled: widget.onPressed != null,
                textColor: btnTextColor,
                hasIcon: widget.icon != null,
                isTranslatable: widget.isTranslatable,
              ),
          icon: widget.icon != null ? Icon(widget.icon, color: btnTextColor) : null,
        );
      case CommonButtonType.outlined:
        Color btnTextColor =
            widget.isDestructive ? AppColors(context).paletteError[40]! : colorScheme.primary;

        if (widget.onPressed == null) {
          btnTextColor = disabledColor;
        }
        return OutlinedButton.icon(
          iconAlignment: widget.iconAlignment,
          onPressed: widget.onPressed,
          style:
              widget.size == CommonButtonSize.small
                  ? Theme.of(context).outlinedButtonTheme.style?.copyWith(
                    padding: smallPadding,
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.pressed)) {
                        if (widget.isDestructive) {
                          return AppColors(context).paletteError[40]!.withValues(alpha: 0.12);
                        }
                        return colorScheme.surfaceTint.withValues(alpha: 0.12);
                      }
                      return Colors.transparent;
                    }),
                    side:
                        widget.isDestructive
                            ? WidgetStateProperty.resolveWith((states) {
                              if (states.contains(WidgetState.disabled)) {
                                return null;
                              }
                              return BorderSide(color: AppColors(context).paletteError[40]!);
                            })
                            : null,
                  )
                  : Theme.of(context).outlinedButtonTheme.style?.copyWith(
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.pressed)) {
                        if (widget.isDestructive) {
                          return AppColors(context).paletteError[40]!.withValues(alpha: 0.12);
                        }
                        return colorScheme.surfaceTint.withValues(alpha: 0.12);
                      }
                      return Colors.transparent;
                    }),
                    side:
                        widget.isDestructive
                            ? WidgetStateProperty.resolveWith((states) {
                              if (states.contains(WidgetState.disabled)) {
                                return null;
                              }
                              return BorderSide(color: AppColors(context).paletteError[40]!);
                            })
                            : null,
                  ),
          label:
              widget.titleWidget ??
              TitleTextWidget(
                size: widget.size,
                title: widget.title!,
                enabled: widget.onPressed != null,
                textColor: btnTextColor,
                hasIcon: widget.icon != null,
                isTranslatable: widget.isTranslatable,
              ),
          icon: widget.icon != null ? Icon(widget.icon, color: btnTextColor) : null,
        );
      case CommonButtonType.text:
        Color btnTextColor =
            widget.isDestructive ? AppColors(context).paletteError[40]! : colorScheme.primary;

        if (widget.onPressed == null) {
          btnTextColor = disabledColor;
        }

        return TextButton.icon(
          iconAlignment: widget.iconAlignment,
          onPressed: widget.onPressed,
          style:
              widget.size == CommonButtonSize.small
                  ? Theme.of(context).textButtonTheme.style?.copyWith(
                    padding: smallPadding,
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.pressed)) {
                        if (widget.isDestructive) {
                          return AppColors(context).paletteError[40]!.withValues(alpha: 0.12);
                        }
                        return colorScheme.surfaceTint.withValues(alpha: 0.12);
                      }
                      return Colors.transparent;
                    }),
                  )
                  : Theme.of(context).textButtonTheme.style?.copyWith(
                    padding: regularPadding,
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.pressed)) {
                        if (widget.isDestructive) {
                          return AppColors(context).paletteError[40]!.withValues(alpha: 0.12);
                        }
                        return colorScheme.surfaceTint.withValues(alpha: 0.12);
                      }
                      return Colors.transparent;
                    }),
                  ),
          label:
              widget.titleWidget ??
              TitleTextWidget(
                size: widget.size,
                title: widget.title!,
                enabled: widget.onPressed != null,
                textColor: btnTextColor,
                hasIcon: widget.icon != null,
                isTranslatable: widget.isTranslatable,
              ),
          icon: widget.icon != null ? Icon(widget.icon, color: btnTextColor) : null,
        );
      case CommonButtonType.elevated:
        final Color btnColor =
            widget.onPressed != null
                ? Theme.of(context).colorScheme.onSecondaryContainer
                : disabledColor;

        return ElevatedButton.icon(
          onPressed: widget.onPressed,
          style:
              widget.size == CommonButtonSize.small
                  ? Theme.of(context).elevatedButtonTheme.style?.copyWith(padding: smallPadding)
                  : null,
          label:
              widget.titleWidget ??
              TitleTextWidget(
                size: widget.size,
                title: widget.title!,
                enabled: widget.onPressed != null,
                isTranslatable: widget.isTranslatable,
              ),
          icon: widget.icon != null ? Icon(widget.icon, color: btnColor) : null,
        );
      case CommonButtonType.tonal:
        final Color btnColor =
            widget.onPressed != null
                ? Theme.of(context).colorScheme.onSecondaryContainer
                : disabledColor;

        return FilledButton.icon(
          iconAlignment: widget.iconAlignment,
          onPressed: widget.onPressed,
          style:
              widget.size == CommonButtonSize.small
                  ? MaterialTheme(context).filledButtonTonalStyle.copyWith(padding: smallPadding)
                  : MaterialTheme(context).filledButtonTonalStyle,
          label:
              widget.titleWidget ??
              TitleTextWidget(
                size: widget.size,
                title: widget.title!,
                enabled: widget.onPressed != null,
                textColor: btnColor,
                hasIcon: widget.icon != null,
                isTranslatable: widget.isTranslatable,
              ),
          icon: widget.icon != null ? Icon(widget.icon, color: btnColor) : null,
        );
      case CommonButtonType.outlinedDark:
        Color btnTextColor =
            widget.isDestructive ? AppColors(context).paletteError[40]! : AppColors(context).seed;
        Color borderColor = AppColors(context).seed;

        if (widget.onPressed == null) {
          btnTextColor = AppColors(context).seed.withValues(alpha: 0.38);
          borderColor = AppColors(context).seed.withValues(alpha: 0.38);
        }
        return OutlinedButton.icon(
          iconAlignment: widget.iconAlignment,
          onPressed: widget.onPressed,
          style:
              widget.size == CommonButtonSize.small
                  ? Theme.of(context).outlinedButtonTheme.style?.copyWith(
                    padding: smallPadding,
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.pressed)) {
                        if (widget.isDestructive) {
                          return AppColors(context).paletteError[40]!.withValues(alpha: 0.12);
                        }
                        return colorScheme.surfaceTint.withValues(alpha: 0.12);
                      }
                      return Colors.transparent;
                    }),
                    side:
                        widget.isDestructive
                            ? WidgetStateProperty.resolveWith((states) {
                              if (states.contains(WidgetState.disabled)) {
                                return null;
                              }
                              return BorderSide(color: AppColors(context).paletteError[40]!);
                            })
                            : WidgetStateProperty.resolveWith((states) {
                              return BorderSide(color: borderColor);
                            }),
                  )
                  : Theme.of(context).outlinedButtonTheme.style?.copyWith(
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.pressed)) {
                        if (widget.isDestructive) {
                          return AppColors(context).paletteError[40]!.withValues(alpha: 0.12);
                        }
                        return colorScheme.surfaceTint.withValues(alpha: 0.12);
                      }
                      return Colors.transparent;
                    }),
                    side:
                        widget.isDestructive
                            ? WidgetStateProperty.resolveWith((states) {
                              if (states.contains(WidgetState.disabled)) {
                                return null;
                              }
                              return BorderSide(color: AppColors(context).paletteError[40]!);
                            })
                            : WidgetStateProperty.resolveWith((states) {
                              return BorderSide(color: borderColor);
                            }),
                  ),
          label:
              widget.titleWidget ??
              TitleTextWidget(
                size: widget.size,
                title: widget.title!,
                enabled: widget.onPressed != null,
                textColor: btnTextColor,
                hasIcon: widget.icon != null,
              ),
          icon: widget.icon != null ? Icon(widget.icon, color: btnTextColor) : null,
        );
    }
  }

  Widget _buildLoading(BuildContext ctx) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors(ctx).paletteNeutral[95],
        borderRadius: BorderRadius.circular(Dimens.borderRadiusMD),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.type == CommonButtonType.outlined ? null : AppColors(ctx).surfaceTint8,
          borderRadius: BorderRadius.circular(Dimens.borderRadiusMD),
          border:
              widget.type == CommonButtonType.outlined
                  ? Border.all(color: AppColors(ctx).surfaceTint8)
                  : null,
        ),
        child: const Opacity(
          opacity: 0.5,
          child: CircularProgressIndicator(strokeWidth: Dimens.d2),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        _buildButton(context),
        if (widget.isBusy) Positioned.fill(child: _buildLoading(context)),
      ],
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    super.key,
    required this.title,
    this.enabled = true,
    this.textColor,
    this.hasIcon = false,
    this.isTranslatable = true,
    this.size = CommonButtonSize.regular,
  });

  final CommonButtonSize size;
  final String title;
  final bool enabled;
  final Color? textColor;
  final bool hasIcon;
  final bool isTranslatable;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle =
        size == CommonButtonSize.regular ? AppTextStyles.buttonLarge! : AppTextStyles.buttonSmall!;

    return Text(
      title,
      textAlign: TextAlign.center,
      style: textStyle.copyWith(
        height: hasIcon ? 1 : null,
        color:
            textColor ??
            (enabled
                ? Theme.of(context).colorScheme.onPrimaryFixedVariant
                : AppColors(context).palettePrimary[95]!.withValues(alpha: 0.38)),
      ),
    );
  }
}
