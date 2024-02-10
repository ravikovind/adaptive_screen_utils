import 'package:flutter/widgets.dart';

/// DeviceType is an enum to represent the type of device based on the smallest width of the device.
///
/// [compact] is for small devices like mobile phones
/// 99.96% of phones in portrait mode have a width of 600 or less
///
/// [medium] is for medium devices like tablets
/// 93.73% of tablets in portrait,
/// most large unfolded inner displays in portrait
///
/// [expanded] is for large devices like desktops
/// 97.22% of tablets in landscape,
/// most large unfolded inner displays in landscape
///
/// [https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes](https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes)
///
enum DeviceType {
  /// compact is for small devices like mobile phones
  compact,

  /// medium is for medium devices like tablets
  medium,

  /// expanded is for large devices like desktops
  expanded
}

/// [_screenType] based on the smallest width of the device
///  shortest width is helpful to determine device type regardless of orientation.
///
/// if the smallest width is less than 600, it's a compact device (mobile phone)
///
/// if the smallest width is less than 840, it's a medium device (tablet)
///
/// if the smallest width is greater than 840, it's an expanded device (desktop)
///
/// [https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes](https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes)
DeviceType _screenType(BuildContext context) {
  final smallestWidth = MediaQuery.of(context).size.shortestSide;
  if (smallestWidth < 600) {
    return DeviceType.compact;
  } else if (smallestWidth < 840) {
    return DeviceType.medium;
  }
  return DeviceType.expanded;
}

/// compact is a helper function to check if the device is compact (mobile phone)
///
/// ```dart
/// if (compact(context)) {
///  return MobileLayout();
/// }
/// return OtherLayout();
/// ```
///
/// [https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes](https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes)
bool compact(BuildContext context) =>
    _screenType(context) == DeviceType.compact;

/// medium is a helper function to check if the device is medium (tablet)
///
/// ```dart
/// if (medium(context)) {
/// return TabletLayout();
/// }
/// return OtherLayout();
/// ```
///
/// [https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes](https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes)
bool medium(BuildContext context) => _screenType(context) == DeviceType.medium;

/// expanded is a helper function to check if the device is expanded (desktop)
///
/// ```dart
/// if (expanded(context)) {
/// return DesktopLayout();
/// }
/// return OtherLayout();
/// ```
///
/// [https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes](https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes)
bool expanded(BuildContext context) =>
    _screenType(context) == DeviceType.expanded;
