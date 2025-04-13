part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.systemChanged(Brightness brightness) = _SystemChanged;
  const factory ThemeEvent.toggle() = _Toggle;
}
