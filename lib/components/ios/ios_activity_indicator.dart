import 'package:abstract_factory_example/interfaces/i_activity_indicator.dart';
import 'package:flutter/cupertino.dart';

class IosActivityIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return const CupertinoActivityIndicator();
  }
}
