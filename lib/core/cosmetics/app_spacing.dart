import 'package:flutter/material.dart';

class AppSpacing {
  static const xxl = 24.0;
  static const xl = 20.0;
  static const large = 16.0;
  static const centerText = 32.0;
  static const radiusxs = 6.0;
  static const radiusSmall = 8.0;
  static const radius = 16.0;
  static const radiusxl = 40.0;
  static const verticalxxs = 5.0;
  static const verticalxs = 8.0;
  static const vertical = 16.0;
  static const vertical28 = 28.0;
  static const verticalxl = 32.0;
  static const vertical156 = 156.0;
  static const horizontalxs = 12.0;
  static const horizontalxxs = 5.0;
  static const horizontal = 24.0;
  static const horizontal16 = 16.0;
  static const dialogMargin = EdgeInsets.all(25);
  static var bottomSheetRadius = BorderRadius.vertical(
    top: Radius.circular(radiusxl),
  );
  static var topRadiusxl = BorderRadius.vertical(
    top: Radius.circular(radiusxl),
  );
  static var allRadiusxl = BorderRadius.circular(radiusxl);
  static var allRadius = BorderRadius.circular(radius);
  static var allRadiusSmall = BorderRadius.circular(radiusSmall);
  static const allSpaceMain = EdgeInsets.all(large);
  static const allSpaceXxl = EdgeInsets.all(xxl);
  static const allSpace = EdgeInsets.symmetric(
    vertical: vertical,
    horizontal: horizontal,
  );
  static const allSpace16 = EdgeInsets.symmetric(
    vertical: horizontalxs,
    horizontal: horizontal16,
  );
  static const allSpacexs = EdgeInsets.symmetric(
    vertical: horizontalxs,
    horizontal: horizontalxs,
  );
  static const allSpacexxs = EdgeInsets.symmetric(
    vertical: verticalxxs,
    horizontal: horizontalxxs,
  );
  static const statusSpace = EdgeInsets.symmetric(
    vertical: verticalxxs,
    horizontal: horizontalxs,
  );
  static const verticalSpace = EdgeInsets.symmetric(
    vertical: vertical,
  );
  static const verticalSpacexs = EdgeInsets.symmetric(
    vertical: verticalxs,
  );
  static const horizontalSpace = EdgeInsets.symmetric(
    horizontal: horizontal,
  );
  static const horizontalSpace16 = EdgeInsets.symmetric(
    horizontal: horizontal16,
  );
  static const horizontalSpacexxs = EdgeInsets.symmetric(
    horizontal: horizontalxxs,
  );
}
