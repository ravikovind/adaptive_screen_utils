# adaptive_screen_utils

[![pub package](https://img.shields.io/pub/v/adaptive_screen_utils.svg)](https://pub.dartlang.org/packages/adaptive_screen_utils)
[![Score](https://img.shields.io/pub/points/adaptive_screen_utils?label=Score&logo=dart)](https://pub.dartlang.org/packages/adaptive_screen_utils/score)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Android%20|%20iOS%20|%20Web%20|%20macOS%20|%20Windows%20|%20Linux%20-blue.svg?logo=flutter)](https://pub.dartlang.org/packages/adaptive_screen_utils)
![GitHub stars](https://img.shields.io/github/stars/ravikovind/adaptive_screen_utils)
![GitHub forks](https://img.shields.io/github/forks/ravikovind/adaptive_screen_utils)
![GitHub issues](https://img.shields.io/github/issues/ravikovind/adaptive_screen_utils)
![GitHub pull requests](https://img.shields.io/github/issues-pr/ravikovind/adaptive_screen_utils)
![GitHub contributors](https://img.shields.io/github/contributors/ravikovind/adaptive_screen_utils)
![GitHub last commit](https://img.shields.io/github/last-commit/ravikovind/adaptive_screen_utils)

A Flutter package to provide Adaptive Screen Utils for creating responsive UI for different screen sizes. Make your UI look great on any device. Easy to manage different screen sizes.

<p align="center">
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=KYb8aqa6XEY" target="_blank">
    <img src="https://img.youtube.com/vi/KYb8aqa6XEY/0.jpg" alt="Youtube Video" width="480" height="320" />
  </a>
</p>

This package is created for educational purposes in Flutter Jaipur Meetup: [ Make your own package publish on pub.dev](https://www.meetup.com/flutterjaipur/events/299009464/).

You can use it in production as well. It is a simple package that provides a few methods to check the screen size and create a responsive UI based on the screen width, height, and orientation.

### Flutter Jaipur Social Handles

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Flutter%20Jaipur-blue.svg?logo=linkedin)](https://www.linkedin.com/company/flutter-jaipur)
[![Twitter](https://img.shields.io/badge/Twitter-Flutter%20Jaipur-blue.svg?logo=twitter)](https://twitter.com/Flutter_Jaipur)
[![Meetup](https://img.shields.io/badge/Meetup-Flutter%20Jaipur-blue.svg?logo=meetup)](https://www.meetup.com/meetup-group-flutterjaipur/)
[![YouTube](https://img.shields.io/badge/YouTube-Flutter%20Jaipur-blue.svg?logo=youtube)](https://www.youtube.com/@FlutterJaipur)

## Usage

To use this package, add `adaptive_screen_utils` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

```yaml
dependencies:
  adaptive_screen_utils: ^2.3.0
```

## Example

Import the file to your project

```dart
import 'package:adaptive_screen_utils/adaptive_screen_utils.dart';
```

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = expanded(context);
    final tablet = medium(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Adaptive Screen Utils'),
      ),
      body: Builder(
        builder: (context) {
         if (desktop) {
            return Center(
              child: Text(
                'Desktop',
                style: Theme.of(context).textTheme.headline4,
              ),
            );
          } else if (tablet) {
            return Center(
              child: Text(
                'Tablet',
                style: Theme.of(context).textTheme.headline4,
              ),
            );
          }
          return Center(
              child: Text(
                'Mobile',
                style: Theme.of(context).textTheme.headline4,
              ),
          );
        },
      ),
    );
  }
}
```

## Methods

| Method     | Orientation | Height | Width | DeviceType | Result       |
| ---------- | ----------- | ------ | ----- | ---------- | ------------ |
| `wearable` | Portrait    | 450.0  | 450.0 | Watch      | `true`       |
| `wearable` | Landscape   | 450.0  | 450.0 | Watch      | `true`       |
| `compact`  | Portrait    | 480.0  | 600.0 | Mobile     | `true`       |
| `compact`  | Landscape   | 600.0  | 480.0 | Mobile     | `true`       |
| `medium`   | Portrait    | 900.0  | 840.0 | Tablet     | `true`       |
| `medium`   | Landscape   | 840.0  | 900.0 | Tablet     | `true`       |
| `expanded` | Portrait    | 960.0  | 840.0 | Desktop    | `true`       |
| `expanded` | Landscape   | 840.0  | 960.0 | Desktop    | `true`       |
| `Type`     | ----------- | ------ | ----- | ---------- | `DeviceType` |

## Disclaimer

The current approach to determining device types (wearable, compact, medium, and expanded) based on width, height, and orientation is a simple approach. It may not be accurate for all devices.

[https://developer.android.com/develop/ui/views/layout/window-size-classes](https://developer.android.com/develop/ui/views/layout/window-size-classes) is a good reference for understanding the concept of screen size classes. this package is inspired by the above link & check wearables, compact, medium, and expanded based on width, height, and orientation.

## Issues & Feedback

If you wish to contribute to this repo, welcome to [Pull Requests](https://github.com/ravikovind/adaptive_screen_utils/pulls).
Star ⭐ the repo if you find it useful 🤩🤩. we are open to `enhancements`, `bug-fixes` & `suggestions`. feel free to open an [issue](https://github.com/ravikovind/adaptive_screen_utils/issues).

## License

```md
MIT License
```

## Maintainers & Collaborators

### [Ravi Kovind](https://ravikovind.github.io/)

### [Flutter Jaipur](https://www.meetup.com/meetup-group-flutterjaipur/)
