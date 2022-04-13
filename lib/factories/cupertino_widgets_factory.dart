import 'package:abstract_factory_example/components/ios/ios_activity_indicator.dart';
import 'package:abstract_factory_example/components/ios/ios_slider.dart';
import 'package:abstract_factory_example/components/ios/ios_switch.dart';
import 'package:abstract_factory_example/interfaces/i_switch.dart';
import 'package:abstract_factory_example/interfaces/i_slider.dart';
import 'package:abstract_factory_example/interfaces/i_activity_indicator.dart';
import 'package:abstract_factory_example/interfaces/i_widgets_factory.dart';

class CupertinoWidgetsFactory implements IWidgetsFactory {
  @override
  IActivityIndicator createActivityIndicator() {
    return IosActivityIndicator();
  }

  @override
  ISlider createSlider() {
    return IosSlider();
  }

  @override
  ISwitch createSwitch() {
    return IosSwitch();
  }

  @override
  String getTitle() {
    return "iOS widgets";
  }
}
