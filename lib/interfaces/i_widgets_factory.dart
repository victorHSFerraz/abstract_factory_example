import 'package:abstract_factory_example/interfaces/i_activity_indicator.dart';
import 'package:abstract_factory_example/interfaces/i_slider.dart';
import 'package:abstract_factory_example/interfaces/i_switch.dart';

abstract class IWidgetsFactory {
  String getTitle();
  IActivityIndicator createActivityIndicator();
  ISlider createSlider();
  ISwitch createSwitch();
}
