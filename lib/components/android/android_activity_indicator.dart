import 'package:abstract_factory_example/interfaces/i_activity_indicator.dart';
import 'package:flutter/material.dart';

class AndroidActivityIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return const CircularProgressIndicator(
      backgroundColor: Colors.black26,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
    );
  }
}
