import 'dart:ffi' as ffi;
import 'package:dylib/dylib.dart';
import 'generated_bindings.dart';

LibWGPU? _dylib;
LibWGPU get wgpu {
  return _dylib ??= LibWGPU(ffi.DynamicLibrary.open(resolveDylibPath(
    'ffi/libwgpu',
    dartDefine: 'LIBWGPU_PATH',
    environmentVariable: 'LIBWGPU_PATH',
  )));
}
