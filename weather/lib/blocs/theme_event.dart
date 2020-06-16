import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:felangel_weather/models/models.dart';

@immutable
abstract class ThemeEvent extends Equatable {
  ThemeEvent([List props = const []]) : super(props);
}

class WeatherChanged extends ThemeEvent {
  final WeatherCondition condition;

  WeatherChanged({@required this.condition})
      : assert(condition != null),
        super([condition]);
}
