import 'package:abstract_factory_example/interfaces/i_switch.dart';
import 'package:flutter/cupertino.dart';

class IosSwitch implements ISwitch {
  @override
  Widget render(bool value, ValueSetter<bool> onChanged) {
    return CupertinoSwitch(
      value: value,
      onChanged: onChanged,
    );
  }
}
