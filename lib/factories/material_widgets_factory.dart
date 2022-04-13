import 'package:abstract_factory_example/components/android/android_activity_indicator.dart';
import 'package:abstract_factory_example/components/android/android_slider.dart';
import 'package:abstract_factory_example/components/android/android_swicth.dart';
import 'package:abstract_factory_example/interfaces/i_switch.dart';
import 'package:abstract_factory_example/interfaces/i_slider.dart';
import 'package:abstract_factory_example/interfaces/i_activity_indicator.dart';
import 'package:abstract_factory_example/interfaces/i_widgets_factory.dart';

class MaterialWidgetsFactory implements IWidgetsFactory {
  @override
  IActivityIndicator createActivityIndicator() {
    return AndroidActivityIndicator();
  }

  @override
  ISlider createSlider() {
    return AndroidSlider();
  }

  @override
  ISwitch createSwitch() {
    return AndroidSwitch();
  }

  @override
  String getTitle() {
    return "Android Widgets";
  }
}
