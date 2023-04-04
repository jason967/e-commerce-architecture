import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reflectable/reflectable.dart';

import '../../../../main.reflectable.dart';

class DataMirrors {
  Map<String, dynamic> mirrors = {};
  static final DataMirrors _instance = DataMirrors._internal();

  factory DataMirrors() => _instance;

  DataMirrors._internal();
}

class ViewModuleWidget extends Reflectable {
  const ViewModuleWidget()
      : super(invokingCapability, typingCapability, reflectedTypeCapability);
}

void initReflect() {
  initializeReflectable();
  for (var element in viewModuleWidget.annotatedClasses) {
    DataMirrors().mirrors[element.simpleName.toLowerCase()] =
        element.newInstance('', []);
  }
}

const viewModuleWidget = ViewModuleWidget();

@viewModuleWidget
class ReflectSample extends StatelessWidget {
  const ReflectSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      color: Colors.red,
    );
  }
}

@viewModuleWidget
class ReflectSample2 extends StatelessWidget {
  const ReflectSample2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
