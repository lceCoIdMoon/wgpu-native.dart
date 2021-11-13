import 'package:wgpu_native/wgpu_native.dart';
import 'package:test/test.dart';

void main() {
  test('Test', () {
    print(wgpu.wgpuGetVersion());
  });
}
