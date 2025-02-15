import 'package:flutter/widgets.dart';

/// DeviceType is an enum to represent the type of device based on width.
///
/// [wearable] is for wearable devices like watches.
/// Most smartwatches have a width of 300 or less.
///
/// [compact] is for small devices like mobile phones.
/// Phones in portrait mode typically have a width of less than 600.
///
/// [medium] is for medium-sized devices like tablets and foldables in portrait.
/// Devices in this category usually have a width between 600 and 840.
///
/// [expanded] is for larger devices like tablets in landscape, foldables in landscape, and smaller desktops.
/// Devices in this category generally have a width between 840 and 1200.
///
/// [large] is for larger desktops.
/// Devices in this category have a width between 1200 and 1600.
///
/// [extraLarge] is for extra-large desktop displays and ultra-wide screens.
/// Devices in this category have a width of 1600 or more.

enum DeviceType {
  /// wearable is for wearable devices like watches
  wearable,

  /// compact is for small devices like mobile phones
  compact,

  /// medium is for medium devices like tablets
  medium,

  /// expanded is for large devices like desktops
  expanded,

  /// large is for larger desktops
  /// Devices in this category have a width between 1200 and 1600.
  large,

  /// extraLarge is for extra-large desktop displays and ultra-wide screens
  /// Devices in this category have a width of 1600 or more.
  extraLarge,
}

/// wearable is a helper function to check,
/// if the device is wearable (watch)
/// 99.99% of watches have a width of 300 or less.
/// ```dart
/// if (wearable(context)) {
///  return WatchWidget();
/// }
/// ```
bool wearable(BuildContext context) => MediaQuery.sizeOf(context).width <= 300;

/// compact is a helper function to check,
/// if the device is compact (mobile phone)
///
/// 99.96% of phones have a width of 600 or less.
///
/// ```dart
/// if (compact(context)) {
///  return MobilePhoneWidget();
/// }
/// ```
bool compact(BuildContext context) => MediaQuery.sizeOf(context).width <= 600;

/// medium is a helper function to check,
/// if the device is medium (tablet)
///
/// 93.73% of tablets, most large unfolded inner displays have a width of 840 or less and greater than equal to 600.
///
/// ```dart
/// if (medium(context)) {
/// return TabletWidget();
/// }
/// ```
bool medium(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  return width >= 600 && width <= 840;
}

/// expanded is a helper function to check,
/// if the device is expanded (desktop)
///
/// 97.22% of desktops have a width of 840 or more and less than 1200.
/// ```dart
/// if (expanded(context)) {
///  return DesktopWidget();
/// }
/// ```

bool expanded(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  return width >= 840 && width <= 1200;
}

/// large is a helper function to check,
/// if the device is large (larger desktop)
/// 99.99% of larger desktops have a width of 1200 or more and less than 1600.
/// ```dart
/// if (large(context)) {
///  return LargeDesktopWidget();
/// }
/// ```
///

bool large(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  return width >= 1200 && width <= 1600;
}

/// extraLarge is a helper function to check,
/// if the device is extraLarge (extra-large desktop displays and ultra-wide screens)
/// 99.99% of extra-large desktop displays and ultra-wide screens have a width of 1600 or more.
/// ```dart
/// if (extraLarge(context)) {
///  return ExtraLargeDesktopWidget();
/// }
/// ```
///

bool extraLarge(BuildContext context) =>
    MediaQuery.sizeOf(context).width >= 1600;

/// extension on BuildContext for accessing deviceTypes directly from the context
extension OfBuildContext on BuildContext {
  /// deviceType is a helper function to get the device type based on width.

  DeviceType get deviceType {
    final width = MediaQuery.sizeOf(this).width;
    if (width <= 300) {
      return DeviceType.wearable;
    } else if (width <= 600) {
      return DeviceType.compact;
    } else if (width >= 600 && width <= 840) {
      return DeviceType.medium;
    } else if (width >= 840 && width <= 1200) {
      return DeviceType.expanded;
    } else if (width >= 1200 && width <= 1600) {
      return DeviceType.large;
    }
    return DeviceType.extraLarge;
  }

  /// wearable is a helper function to check,
  /// if the device is wearable (watch)
  bool get wearable => deviceType == DeviceType.wearable;

  /// compact is a helper function to check,
  /// if the device is compact (mobile phone)
  bool get compact => deviceType == DeviceType.compact;

  /// medium is a helper function to check,
  /// if the device is medium (tablet)
  bool get medium => deviceType == DeviceType.medium;

  /// expanded is a helper function to check,
  /// if the device is expanded (desktop)
  bool get expanded => deviceType == DeviceType.expanded;

  /// large is a helper function to check,
  /// if the device is large (larger desktop)
  bool get large => deviceType == DeviceType.large;

  /// extraLarge is a helper function to check,
  /// if the device is extraLarge (extra-large desktop displays and ultra-wide screens)
  bool get extraLarge => deviceType == DeviceType.extraLarge;
}
