import 'package:flutter/widgets.dart';

/// DeviceType is an enum to represent the type of device based on the with, height and orientation of the device.
///
/// [compact] is for small devices like mobile phones.
/// 99.96% of phones in portrait mode have a width of 600 or less.
/// 99.78% of phones in landscape mode have a height of 480 or less.
///
/// [medium] is for medium devices like tablets.
/// 93.73% of tablets in portrait, most large unfolded inner displays in portrait have a width of 840 or less and greater than equal to 600.
/// 96.56% of tablets in landscape have a height of 900 or less and greater than equal to 480.
///
/// [expanded] is for large devices like desktops.
/// 94.25% of tablets in portrait have a height of 960 or more.
/// 97.22% of tablets in landscape, most large unfolded inner displays in landscape have a width of 840 or more.
///
/// [https://developer.android.com/develop/ui/views/layout/window-size-classes](https://developer.android.com/develop/ui/views/layout/window-size-classes)

enum DeviceType {
  /// compact is for small devices like mobile phones
  compact,

  /// medium is for medium devices like tablets
  medium,

  /// expanded is for large devices like desktops
  expanded
}

/// [_screenType] based on the width, height and orientation of the device. this responsible for determining the type of device.
///
/// returns [DeviceType] based on the width, height and orientation of the device.
///
/// [context] is the BuildContext of the widget.
///
/// [compact] is for small devices like mobile phones.
/// 99.96% of phones in portrait mode have a width of 600 or less.
/// 99.78% of phones in landscape mode have a height of 480 or less.
///
/// [medium] is for medium devices like tablets.
/// 93.73% of tablets in portrait, most large unfolded inner displays in portrait have a width of 840 or less and greater than equal to 600.
/// 96.56% of tablets in landscape have a height of 900 or less and greater than equal to 480.
///
/// [expanded] is for large devices like desktops.
/// 94.25% of tablets in portrait have a height of 900 or more.
/// 97.22% of tablets in landscape, most large unfolded inner displays in landscape have a width of 840 or more.

DeviceType _screenType(BuildContext context) {
  final orientation = MediaQuery.of(context).orientation;
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  switch (orientation) {
    case Orientation.portrait:
      if (width <= 600) {
        return DeviceType.compact;
      } else if (width <= 840) {
        return DeviceType.medium;
      } else {
        return DeviceType.expanded;
      }
    case Orientation.landscape:
      if (height <= 480) {
        return DeviceType.compact;
      } else if (height <= 900) {
        return DeviceType.medium;
      } else {
        return DeviceType.expanded;
      }
  }
}

@visibleForTesting

/// [screenType] is a helper function to check,
/// if the device is compact (mobile phone), medium (tablet) or expanded (desktop)
/// based on the width, height and orientation of the device.
DeviceType screenType(BuildContext context) => _screenType(context);

/// compact is a helper function to check,
/// if the device is compact (mobile phone)
///
/// 99.96% of phones in portrait mode have a width of 600 or less.
/// 99.78% of phones in landscape mode have a height of 480 or less.
///
/// ```dart
/// if (compact(context)) {
///  return MobilePhoneWidget();
/// }
/// ```
bool compact(BuildContext context) =>
    _screenType(context) == DeviceType.compact;

/// medium is a helper function to check,
/// if the device is medium (tablet)
///
/// 93.73% of tablets in portrait, most large unfolded inner displays in portrait have a width of 840 or less and greater than equal to 600.
/// 96.56% of tablets in landscape have a height of 900 or less and greater than equal to 480.
///
/// ```dart
/// if (medium(context)) {
/// return TabletWidget();
/// }
/// ```
bool medium(BuildContext context) => _screenType(context) == DeviceType.medium;

/// expanded is a helper function to check,
/// if the device is expanded (desktop)
///
/// 94.25% of tablets in portrait have a height of 960 or more.
/// 97.22% of tablets in landscape, most large unfolded inner displays in landscape have a width of 840 or more.
///
/// ```dart
/// if (expanded(context)) {
/// return DesktopWidget();
/// }
/// ```

bool expanded(BuildContext context) =>
    _screenType(context) == DeviceType.expanded;
