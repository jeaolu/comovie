// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function() loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovies value) getMovies,
    required TResult Function(LoadNextPage value) loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovies value)? getMovies,
    TResult? Function(LoadNextPage value)? loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovies value)? getMovies,
    TResult Function(LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEventCopyWith<$Res> {
  factory $MovieEventCopyWith(
          MovieEvent value, $Res Function(MovieEvent) then) =
      _$MovieEventCopyWithImpl<$Res, MovieEvent>;
}

/// @nodoc
class _$MovieEventCopyWithImpl<$Res, $Val extends MovieEvent>
    implements $MovieEventCopyWith<$Res> {
  _$MovieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMoviesImplCopyWith<$Res> {
  factory _$$GetMoviesImplCopyWith(
          _$GetMoviesImpl value, $Res Function(_$GetMoviesImpl) then) =
      __$$GetMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMoviesImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$GetMoviesImpl>
    implements _$$GetMoviesImplCopyWith<$Res> {
  __$$GetMoviesImplCopyWithImpl(
      _$GetMoviesImpl _value, $Res Function(_$GetMoviesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMoviesImpl implements GetMovies {
  const _$GetMoviesImpl();

  @override
  String toString() {
    return 'MovieEvent.getMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function() loadNextPage,
  }) {
    return getMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? loadNextPage,
  }) {
    return getMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) {
    if (getMovies != null) {
      return getMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovies value) getMovies,
    required TResult Function(LoadNextPage value) loadNextPage,
  }) {
    return getMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovies value)? getMovies,
    TResult? Function(LoadNextPage value)? loadNextPage,
  }) {
    return getMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovies value)? getMovies,
    TResult Function(LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (getMovies != null) {
      return getMovies(this);
    }
    return orElse();
  }
}

abstract class GetMovies implements MovieEvent {
  const factory GetMovies() = _$GetMoviesImpl;
}

/// @nodoc
abstract class _$$LoadNextPageImplCopyWith<$Res> {
  factory _$$LoadNextPageImplCopyWith(
          _$LoadNextPageImpl value, $Res Function(_$LoadNextPageImpl) then) =
      __$$LoadNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNextPageImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$LoadNextPageImpl>
    implements _$$LoadNextPageImplCopyWith<$Res> {
  __$$LoadNextPageImplCopyWithImpl(
      _$LoadNextPageImpl _value, $Res Function(_$LoadNextPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadNextPageImpl implements LoadNextPage {
  const _$LoadNextPageImpl();

  @override
  String toString() {
    return 'MovieEvent.loadNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function() loadNextPage,
  }) {
    return loadNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? loadNextPage,
  }) {
    return loadNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovies value) getMovies,
    required TResult Function(LoadNextPage value) loadNextPage,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovies value)? getMovies,
    TResult? Function(LoadNextPage value)? loadNextPage,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovies value)? getMovies,
    TResult Function(LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class LoadNextPage implements MovieEvent {
  const factory LoadNextPage() = _$LoadNextPageImpl;
}

/// @nodoc
mixin _$MovieState {
  List<GetMoviesResponseObject> get movies =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAppendingPage => throw _privateConstructorUsedError;
  bool get hasLastPage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieStateCopyWith<MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
  @useResult
  $Res call(
      {List<GetMoviesResponseObject> movies,
      bool isLoading,
      bool isAppendingPage,
      bool hasLastPage,
      String? errorMessage});
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
    Object? isLoading = null,
    Object? isAppendingPage = null,
    Object? hasLastPage = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<GetMoviesResponseObject>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppendingPage: null == isAppendingPage
          ? _value.isAppendingPage
          : isAppendingPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLastPage: null == hasLastPage
          ? _value.hasLastPage
          : hasLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieStateImplCopyWith<$Res>
    implements $MovieStateCopyWith<$Res> {
  factory _$$MovieStateImplCopyWith(
          _$MovieStateImpl value, $Res Function(_$MovieStateImpl) then) =
      __$$MovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GetMoviesResponseObject> movies,
      bool isLoading,
      bool isAppendingPage,
      bool hasLastPage,
      String? errorMessage});
}

/// @nodoc
class __$$MovieStateImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateImpl>
    implements _$$MovieStateImplCopyWith<$Res> {
  __$$MovieStateImplCopyWithImpl(
      _$MovieStateImpl _value, $Res Function(_$MovieStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
    Object? isLoading = null,
    Object? isAppendingPage = null,
    Object? hasLastPage = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$MovieStateImpl(
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<GetMoviesResponseObject>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppendingPage: null == isAppendingPage
          ? _value.isAppendingPage
          : isAppendingPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLastPage: null == hasLastPage
          ? _value.hasLastPage
          : hasLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MovieStateImpl implements _MovieState {
  const _$MovieStateImpl(
      {required final List<GetMoviesResponseObject> movies,
      required this.isLoading,
      required this.isAppendingPage,
      required this.hasLastPage,
      required this.errorMessage})
      : _movies = movies;

  final List<GetMoviesResponseObject> _movies;
  @override
  List<GetMoviesResponseObject> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final bool isLoading;
  @override
  final bool isAppendingPage;
  @override
  final bool hasLastPage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MovieState(movies: $movies, isLoading: $isLoading, isAppendingPage: $isAppendingPage, hasLastPage: $hasLastPage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieStateImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAppendingPage, isAppendingPage) ||
                other.isAppendingPage == isAppendingPage) &&
            (identical(other.hasLastPage, hasLastPage) ||
                other.hasLastPage == hasLastPage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_movies),
      isLoading,
      isAppendingPage,
      hasLastPage,
      errorMessage);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieStateImplCopyWith<_$MovieStateImpl> get copyWith =>
      __$$MovieStateImplCopyWithImpl<_$MovieStateImpl>(this, _$identity);
}

abstract class _MovieState implements MovieState {
  const factory _MovieState(
      {required final List<GetMoviesResponseObject> movies,
      required final bool isLoading,
      required final bool isAppendingPage,
      required final bool hasLastPage,
      required final String? errorMessage}) = _$MovieStateImpl;

  @override
  List<GetMoviesResponseObject> get movies;
  @override
  bool get isLoading;
  @override
  bool get isAppendingPage;
  @override
  bool get hasLastPage;
  @override
  String? get errorMessage;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieStateImplCopyWith<_$MovieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
