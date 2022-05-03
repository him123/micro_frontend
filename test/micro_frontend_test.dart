import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:micro_frontend/micro_frontend.dart';

void main() {
  const MethodChannel channel = MethodChannel('micro_frontend');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MicroFrontend.platformVersion, '42');
  });
}
