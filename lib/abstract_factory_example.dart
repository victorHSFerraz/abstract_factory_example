import 'package:abstract_factory_example/factories/cupertino_widgets_factory.dart';
import 'package:abstract_factory_example/factories/material_widgets_factory.dart';
import 'package:abstract_factory_example/interfaces/i_activity_indicator.dart';
import 'package:abstract_factory_example/interfaces/i_slider.dart';
import 'package:abstract_factory_example/interfaces/i_switch.dart';
import 'package:abstract_factory_example/interfaces/i_widgets_factory.dart';
import 'package:flutter/material.dart';

class AbstractFactoryExample extends StatefulWidget {
  const AbstractFactoryExample({Key? key}) : super(key: key);

  @override
  State<AbstractFactoryExample> createState() => _AbstractFactoryExampleState();
}

class _AbstractFactoryExampleState extends State<AbstractFactoryExample> {
  final List<IWidgetsFactory> widgetsFactoryList = [
    MaterialWidgetsFactory(),
    CupertinoWidgetsFactory(),
  ];

  int _selectedFactoryIndex = 0;

  late IActivityIndicator _activityIndicator;
  late ISlider _slider;
  double _sliderValue = 50.0;
  String get _sliderValueString => _sliderValue.toStringAsFixed(0);

  late ISwitch _switch;
  bool _switchValue = false;
  String get _switchValueString => _switchValue ? 'ON' : 'OFF';

  @override
  void initState() {
    super.initState();
    _createWidgets();
  }

  void _createWidgets() {
    _activityIndicator = widgetsFactoryList[_selectedFactoryIndex].createActivityIndicator();
    _slider = widgetsFactoryList[_selectedFactoryIndex].createSlider();
    _switch = widgetsFactoryList[_selectedFactoryIndex].createSwitch();
  }

  void _setSelectedFactoryIndex(int index) {
    setState(() {
      _selectedFactoryIndex = index;
      _createWidgets();
    });
  }

  void _setSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  void _setSwitchValue(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () => _setSelectedFactoryIndex(0),
                    child: const Text('Android'),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () => _setSelectedFactoryIndex(1),
                    child: const Text('iOS'),
                  ),
                  const SizedBox(height: 20),
                  const Text("Process Indicator"),
                  const SizedBox(height: 20),
                  _activityIndicator.render(),
                  const SizedBox(height: 20),
                  Text("Slider $_sliderValueString%"),
                  const SizedBox(height: 20),
                  _slider.render(_sliderValue, _setSliderValue),
                  const SizedBox(height: 20),
                  Text("Switch $_switchValueString"),
                  const SizedBox(height: 20),
                  _switch.render(_switchValue, _setSwitchValue),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
