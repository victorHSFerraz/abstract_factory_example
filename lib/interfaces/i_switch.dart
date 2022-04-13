import 'package:flutter/cupertino.dart';

abstract class ISwitch {
  Widget render(bool value, ValueSetter<bool> onChanged);
}
