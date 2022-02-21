import 'package:flutter/material.dart';
import 'package:kelana_app/core/cosmetics/app_colors.dart';
import 'package:kelana_app/core/cosmetics/app_sized_box.dart';

import '../cosmetics/app_spacing.dart';
import '../cosmetics/app_typography.dart';

class AppFilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;
  final Widget? icon;

  /// Default text style for unselected chip
  final TextStyle textStyle;

  /// Selected chip will use this textstyle
  final TextStyle selectedTextStyle;

  /// Force button disabled
  final bool isDisabled;

  /// If [withRemoveIcon] is [True]
  /// Selected chip color will not changed
  /// And will have a remove icon trailing
  final bool withRemoveIcon;

  final double borderRadius;
  final double horizontalPadding;
  final double verticalPadding;

  const AppFilterChip({
    Key? key,
    required this.label,
    required this.isSelected,
    this.onTap,
    this.icon,
    this.textStyle = AppRegularText.body2,
    this.selectedTextStyle = AppMediumText.body2,
    this.borderRadius = 26,
    this.horizontalPadding = AppSpacing.medium,
    this.isDisabled = false,
    this.withRemoveIcon = false,
    this.verticalPadding = 8,
  }) : super(key: key);

  const AppFilterChip.small({
    required this.label,
    required this.isSelected,
    this.onTap,
    this.icon,
    this.textStyle = AppRegularText.caption1,
    this.selectedTextStyle = AppMediumText.caption1,
    this.borderRadius = 26,
    this.horizontalPadding = AppSpacing.medium,
    this.isDisabled = false,
    this.withRemoveIcon = false,
    this.verticalPadding = 7,
  });

  @override
  Widget build(BuildContext context) {
    final changeToActiveColor = isSelected && !withRemoveIcon;
    return InkWell(
      onTap: isDisabled ? null : onTap,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        decoration: BoxDecoration(
          color: changeToActiveColor
              ? AppColors.primary.shade500
              : AppColors.neutral.shade100,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: (icon == null && !withRemoveIcon)
            ? Text(
                label,
                style: changeToActiveColor
                    ? selectedTextStyle.light
                    : textStyle.neutral70,
                textAlign: TextAlign.center,
              )
            : Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                // : MainAxisSize.min,
                children: [
                  Text(
                    label,
                    style: changeToActiveColor
                        ? selectedTextStyle.light
                        : textStyle.neutral70,
                  ),
                  if (icon != null || withRemoveIcon)
                    const AppSizedBox.widthSmall(),
                  if (icon != null) icon!,
                  if (withRemoveIcon && isSelected)
                    Icon(
                      Icons.close,
                      color: AppColors.neutral.shade400,
                      size: 16,
                    )
                ],
              ),
      ),
    );
  }
}
