import 'package:flutter/widgets.dart';

/// DeviceType is responsible for defining the type of device
///
/// [compact] is for small devices like mobile phones
///
/// [medium] is for medium devices like tablets
///
/// [expanded] is for large devices like desktops
enum DeviceType { compact, medium, expanded }

/// _screenType based on the smallest width of the device
DeviceType _screenType(BuildContext context) {
  final smallestWidth = MediaQuery.of(context).size.shortestSide;
  if (smallestWidth < 600) {
    return DeviceType.compact;
  } else if (smallestWidth < 840) {
    return DeviceType.medium;
  } else {
    return DeviceType.expanded;
  }
}

/// compact is a helper function to check if the device is compact
bool compact(BuildContext context) =>
    _screenType(context) == DeviceType.compact;

/// medium is a helper function to check if the device is medium
bool medium(BuildContext context) => _screenType(context) == DeviceType.medium;

/// expanded is a helper function to check if the device is expanded
bool expanded(BuildContext context) =>
    _screenType(context) == DeviceType.expanded;
