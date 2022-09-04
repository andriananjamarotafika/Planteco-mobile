import 'ItemModal.dart';

class TemperatureTemp extends Item {
  int speed;
  double? value;

  TemperatureTemp({
    name,
    iconOn,
    iconOff,
    active,
    color,
    type,
    this.speed = 1,
    this.value = 25,
  }) : super(
          name: name,
          iconOn: iconOn,
          iconOff: iconOff,
          active: active,
          color: color,
          type: type,
        );
}