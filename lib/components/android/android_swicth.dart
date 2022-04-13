import 'package:abstract_factory_example/interfaces/i_switch.dart';
import 'package:flutter/material.dart';

class AndroidSwitch implements ISwitch {
  @override
  Widget render(bool value, ValueSetter<bool> onChanged) {
    return Switch(
      activeColor: Colors.black,
      value: value,
      onChanged: onChanged,
    );
  }
}
