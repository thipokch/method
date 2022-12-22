import 'package:flutter/material.dart';
import 'package:method_preview/method_preview.dart';
import 'package:method_style/method_style.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookTheme(name: 'Light')
ThemeData lightTheme() => MtTheme.light;

@WidgetbookTheme(name: 'Dark')
ThemeData darkTheme() => MtTheme.dark;

@WidgetbookApp.material(
  name: 'MethodApp',
  devices: MtPreviewFrame.devices,
  frames: MtPreviewFrame.frames,
)
void app; // ignore: unused_element

@WidgetbookDeviceFrameBuilder()
final frameBuilder = previewFrameBuilder;
