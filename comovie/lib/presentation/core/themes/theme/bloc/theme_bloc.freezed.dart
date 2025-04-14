// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Brightness brightness) systemChanged,
    required TResult Function() toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Brightness brightness)? systemChanged,
    TResult? Function()? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Brightness brightness)? systemChanged,
    TResult Function()? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SystemChanged value) systemChanged,
    required TResult Function(_Toggle value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SystemChanged value)? systemChanged,
    TResult? Function(_Toggle value)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SystemChanged value)? systemChanged,
    TResult Function(_Toggle value)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SystemChangedImplCopyWith<$Res> {
  factory _$$SystemChangedImplCopyWith(
          _$SystemChangedImpl value, $Res Function(_$SystemChangedImpl) then) =
      __$$SystemChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Brightness brightness});
}

/// @nodoc
class __$$SystemChangedImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$SystemChangedImpl>
    implements _$$SystemChangedImplCopyWith<$Res> {
  __$$SystemChangedImplCopyWithImpl(
      _$SystemChangedImpl _value, $Res Function(_$SystemChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
  }) {
    return _then(_$SystemChangedImpl(
      null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ));
  }
}

/// @nodoc

class _$SystemChangedImpl implements _SystemChanged {
  const _$SystemChangedImpl(this.brightness);

  @override
  final Brightness brightness;

  @override
  String toString() {
    return 'ThemeEvent.systemChanged(brightness: $brightness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemChangedImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brightness);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemChangedImplCopyWith<_$SystemChangedImpl> get copyWith =>
      __$$SystemChangedImplCopyWithImpl<_$SystemChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Brightness brightness) systemChanged,
    required TResult Function() toggle,
  }) {
    return systemChanged(brightness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Brightness brightness)? systemChanged,
    TResult? Function()? toggle,
  }) {
    return systemChanged?.call(brightness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Brightness brightness)? systemChanged,
    TResult Function()? toggle,
    required TResult orElse(),
  }) {
    if (systemChanged != null) {
      return systemChanged(brightness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SystemChanged value) systemChanged,
    required TResult Function(_Toggle value) toggle,
  }) {
    return systemChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SystemChanged value)? systemChanged,
    TResult? Function(_Toggle value)? toggle,
  }) {
    return systemChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SystemChanged value)? systemChanged,
    TResult Function(_Toggle value)? toggle,
    required TResult orElse(),
  }) {
    if (systemChanged != null) {
      return systemChanged(this);
    }
    return orElse();
  }
}

abstract class _SystemChanged implements ThemeEvent {
  const factory _SystemChanged(final Brightness brightness) =
      _$SystemChangedImpl;

  Brightness get brightness;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemChangedImplCopyWith<_$SystemChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleImplCopyWith<$Res> {
  factory _$$ToggleImplCopyWith(
          _$ToggleImpl value, $Res Function(_$ToggleImpl) then) =
      __$$ToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ToggleImpl>
    implements _$$ToggleImplCopyWith<$Res> {
  __$$ToggleImplCopyWithImpl(
      _$ToggleImpl _value, $Res Function(_$ToggleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleImpl implements _Toggle {
  const _$ToggleImpl();

  @override
  String toString() {
    return 'ThemeEvent.toggle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Brightness brightness) systemChanged,
    required TResult Function() toggle,
  }) {
    return toggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Brightness brightness)? systemChanged,
    TResult? Function()? toggle,
  }) {
    return toggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Brightness brightness)? systemChanged,
    TResult Function()? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SystemChanged value) systemChanged,
    required TResult Function(_Toggle value) toggle,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SystemChanged value)? systemChanged,
    TResult? Function(_Toggle value)? toggle,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SystemChanged value)? systemChanged,
    TResult Function(_Toggle value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class _Toggle implements ThemeEvent {
  const factory _Toggle() = _$ToggleImpl;
}

/// @nodoc
mixin _$ThemeState {
  ThemeData get theme => throw _privateConstructorUsedError;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({ThemeData theme});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeStateImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$ThemeStateImplCopyWith(
          _$ThemeStateImpl value, $Res Function(_$ThemeStateImpl) then) =
      __$$ThemeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData theme});
}

/// @nodoc
class __$$ThemeStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateImpl>
    implements _$$ThemeStateImplCopyWith<$Res> {
  __$$ThemeStateImplCopyWithImpl(
      _$ThemeStateImpl _value, $Res Function(_$ThemeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$ThemeStateImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$ThemeStateImpl implements _ThemeState {
  const _$ThemeStateImpl({required this.theme});

  @override
  final ThemeData theme;

  @override
  String toString() {
    return 'ThemeState(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeStateImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      __$$ThemeStateImplCopyWithImpl<_$ThemeStateImpl>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState({required final ThemeData theme}) =
      _$ThemeStateImpl;

  @override
  ThemeData get theme;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
