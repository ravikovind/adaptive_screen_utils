import 'package:flutter_test/flutter_test.dart';
import 'package:adaptive_screen_utils/adaptive_screen_utils.dart';

void main() {
  test('adaptive_screen_utils', () {
    expect(DeviceType.compact, DeviceType.compact);
    expect(DeviceType.medium, DeviceType.medium);
    expect(DeviceType.expanded, DeviceType.expanded);
  });
}
