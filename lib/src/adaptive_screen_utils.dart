import 'package:flutter/widgets.dart';

/// DeviceType is an enum to represent the type of device based on width, height, and orientation of the device.
///
/// [wearable] is for wearable devices like watches.
/// 99.99% of watches have a width of 300 or less. Most watches have a height of 300 or less in portrait/landscape mode.
///
/// [compact] is for small devices like mobile phones.
/// 99.96% of phones in portrait mode have a width of 480 or less.
/// 99.78% of phones in landscape mode have a height of 320 or less.
///
/// [medium] is for medium devices like tablets.
/// 93.73% of tablets in portrait, most large unfolded inner displays in portrait, have a width of 481 or more and less than or equal to 720.
/// 96.56% of tablets in landscape have a height of 321 or more and less than or equal to 600.
///
/// [expanded] is for large devices like desktops.
/// 94.25% of tablets in portrait have a height of 960 or more.
/// 97.22% of tablets in landscape, most large unfolded inner displays in landscape, have a width of 840 or more.
enum DeviceType {
  /// wearable is for wearable devices like watches
  wearable,

  /// compact is for small devices like mobile phones
  compact,

  /// medium is for medium devices like tablets
  medium,

  /// expanded is for large devices like desktops
  expanded
}

/// wearable is a helper function to check,
/// if the device is wearable (watch)
/// 99.99% of watches have a width of 300 or less. Most watches have a height of 300 or less. in portrait/landscape mode.
/// ```dart
/// if (wearable(context)) {
/// return WatchWidget();
/// }
/// ```

bool wearable(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  if (width <= 300 || height <= 300) {
    return true;
  }
  return false;
}

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
bool compact(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  final orientation = MediaQuery.of(context).orientation;
  switch (orientation) {
    case Orientation.portrait:
      if (width <= 480) {
        return true;
      }
      break;
    case Orientation.landscape:
      if (height <= 320) {
        return true;
      }
      break;
  }
  return false;
}

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
bool medium(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  final orientation = MediaQuery.of(context).orientation;
  switch (orientation) {
    case Orientation.portrait:
      if (width >= 600 && width <= 840) {
        return true;
      }
      break;
    case Orientation.landscape:
      if (height >= 480 && height <= 900) {
        return true;
      }
      break;
  }
  return false;
}

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

bool expanded(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  final orientation = MediaQuery.of(context).orientation;
  switch (orientation) {
    case Orientation.portrait:
      if (height >= 960) {
        return true;
      }
      break;
    case Orientation.landscape:
      if (width >= 840) {
        return true;
      }
      break;
  }
  return false;
}

/// extension on BuildContext for accessing deviceTypes directly from the context

extension OfBuildContext on BuildContext {
  /// [wearable] is for wearable devices like watches.
  bool get wearable {
    final height = MediaQuery.of(this).size.height;
    final width = MediaQuery.of(this).size.width;
    if (width <= 300 || height <= 300) {
      return true;
    }
    return false;
  }

  /// [compact] is for small devices like mobile phones.
  bool get compact {
    final height = MediaQuery.of(this).size.height;
    final width = MediaQuery.of(this).size.width;
    final orientation = MediaQuery.of(this).orientation;
    switch (orientation) {
      case Orientation.portrait:
        if (width <= 600) {
          return true;
        }
        break;
      case Orientation.landscape:
        if (height <= 480) {
          return true;
        }
        break;
    }
    return false;
  }

  /// [medium] is for medium devices like tablets.
  bool get medium {
    final height = MediaQuery.of(this).size.height;
    final width = MediaQuery.of(this).size.width;
    final orientation = MediaQuery.of(this).orientation;
    switch (orientation) {
      case Orientation.portrait:
        if (width >= 600 && width <= 840) {
          return true;
        }
        break;
      case Orientation.landscape:
        if (height >= 480 && height <= 900) {
          return true;
        }
        break;
    }
    return false;
  }

  /// [expanded] is for large devices like desktops.
  bool get expanded {
    final height = MediaQuery.of(this).size.height;
    final width = MediaQuery.of(this).size.width;
    final orientation = MediaQuery.of(this).orientation;
    switch (orientation) {
      case Orientation.portrait:
        if (height >= 960) {
          return true;
        }
        break;
      case Orientation.landscape:
        if (width >= 840) {
          return true;
        }
        break;
    }
    return false;
  }
}
