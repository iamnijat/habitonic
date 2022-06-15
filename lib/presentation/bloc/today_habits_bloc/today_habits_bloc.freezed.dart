// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'today_habits_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodayHabitsEventTearOff {
  const _$TodayHabitsEventTearOff();

  TodayHabitsLoadEvent load() {
    return const TodayHabitsLoadEvent();
  }

  TodayHabitsFilteredEvent filter(String filter) {
    return TodayHabitsFilteredEvent(
      filter,
    );
  }

  TodayHabitsReloadEvent reload(HabitViewModel habit) {
    return TodayHabitsReloadEvent(
      habit,
    );
  }
}

/// @nodoc
const $TodayHabitsEvent = _$TodayHabitsEventTearOff();

/// @nodoc
mixin _$TodayHabitsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String filter) filter,
    required TResult Function(HabitViewModel habit) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String filter)? filter,
    TResult Function(HabitViewModel habit)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String filter)? filter,
    TResult Function(HabitViewModel habit)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHabitsLoadEvent value) load,
    required TResult Function(TodayHabitsFilteredEvent value) filter,
    required TResult Function(TodayHabitsReloadEvent value) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHabitsLoadEvent value)? load,
    TResult Function(TodayHabitsFilteredEvent value)? filter,
    TResult Function(TodayHabitsReloadEvent value)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHabitsLoadEvent value)? load,
    TResult Function(TodayHabitsFilteredEvent value)? filter,
    TResult Function(TodayHabitsReloadEvent value)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayHabitsEventCopyWith<$Res> {
  factory $TodayHabitsEventCopyWith(
          TodayHabitsEvent value, $Res Function(TodayHabitsEvent) then) =
      _$TodayHabitsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodayHabitsEventCopyWithImpl<$Res>
    implements $TodayHabitsEventCopyWith<$Res> {
  _$TodayHabitsEventCopyWithImpl(this._value, this._then);

  final TodayHabitsEvent _value;
  // ignore: unused_field
  final $Res Function(TodayHabitsEvent) _then;
}

/// @nodoc
abstract class $TodayHabitsLoadEventCopyWith<$Res> {
  factory $TodayHabitsLoadEventCopyWith(TodayHabitsLoadEvent value,
          $Res Function(TodayHabitsLoadEvent) then) =
      _$TodayHabitsLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodayHabitsLoadEventCopyWithImpl<$Res>
    extends _$TodayHabitsEventCopyWithImpl<$Res>
    implements $TodayHabitsLoadEventCopyWith<$Res> {
  _$TodayHabitsLoadEventCopyWithImpl(
      TodayHabitsLoadEvent _value, $Res Function(TodayHabitsLoadEvent) _then)
      : super(_value, (v) => _then(v as TodayHabitsLoadEvent));

  @override
  TodayHabitsLoadEvent get _value => super._value as TodayHabitsLoadEvent;
}

/// @nodoc

class _$TodayHabitsLoadEvent
    with DiagnosticableTreeMixin
    implements TodayHabitsLoadEvent {
  const _$TodayHabitsLoadEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodayHabitsEvent.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TodayHabitsEvent.load'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TodayHabitsLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String filter) filter,
    required TResult Function(HabitViewModel habit) reload,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String filter)? filter,
    TResult Function(HabitViewModel habit)? reload,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String filter)? filter,
    TResult Function(HabitViewModel habit)? reload,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHabitsLoadEvent value) load,
    required TResult Function(TodayHabitsFilteredEvent value) filter,
    required TResult Function(TodayHabitsReloadEvent value) reload,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHabitsLoadEvent value)? load,
    TResult Function(TodayHabitsFilteredEvent value)? filter,
    TResult Function(TodayHabitsReloadEvent value)? reload,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHabitsLoadEvent value)? load,
    TResult Function(TodayHabitsFilteredEvent value)? filter,
    TResult Function(TodayHabitsReloadEvent value)? reload,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TodayHabitsLoadEvent implements TodayHabitsEvent {
  const factory TodayHabitsLoadEvent() = _$TodayHabitsLoadEvent;
}

/// @nodoc
abstract class $TodayHabitsFilteredEventCopyWith<$Res> {
  factory $TodayHabitsFilteredEventCopyWith(TodayHabitsFilteredEvent value,
          $Res Function(TodayHabitsFilteredEvent) then) =
      _$TodayHabitsFilteredEventCopyWithImpl<$Res>;
  $Res call({String filter});
}

/// @nodoc
class _$TodayHabitsFilteredEventCopyWithImpl<$Res>
    extends _$TodayHabitsEventCopyWithImpl<$Res>
    implements $TodayHabitsFilteredEventCopyWith<$Res> {
  _$TodayHabitsFilteredEventCopyWithImpl(TodayHabitsFilteredEvent _value,
      $Res Function(TodayHabitsFilteredEvent) _then)
      : super(_value, (v) => _then(v as TodayHabitsFilteredEvent));

  @override
  TodayHabitsFilteredEvent get _value =>
      super._value as TodayHabitsFilteredEvent;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(TodayHabitsFilteredEvent(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TodayHabitsFilteredEvent
    with DiagnosticableTreeMixin
    implements TodayHabitsFilteredEvent {
  const _$TodayHabitsFilteredEvent(this.filter);

  @override
  final String filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodayHabitsEvent.filter(filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodayHabitsEvent.filter'))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodayHabitsFilteredEvent &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  $TodayHabitsFilteredEventCopyWith<TodayHabitsFilteredEvent> get copyWith =>
      _$TodayHabitsFilteredEventCopyWithImpl<TodayHabitsFilteredEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String filter) filter,
    required TResult Function(HabitViewModel habit) reload,
  }) {
    return filter(this.filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String filter)? filter,
    TResult Function(HabitViewModel habit)? reload,
  }) {
    return filter?.call(this.filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String filter)? filter,
    TResult Function(HabitViewModel habit)? reload,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this.filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHabitsLoadEvent value) load,
    required TResult Function(TodayHabitsFilteredEvent value) filter,
    required TResult Function(TodayHabitsReloadEvent value) reload,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHabitsLoadEvent value)? load,
    TResult Function(TodayHabitsFilteredEvent value)? filter,
    TResult Function(TodayHabitsReloadEvent value)? reload,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHabitsLoadEvent value)? load,
    TResult Function(TodayHabitsFilteredEvent value)? filter,
    TResult Function(TodayHabitsReloadEvent value)? reload,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class TodayHabitsFilteredEvent implements TodayHabitsEvent {
  const factory TodayHabitsFilteredEvent(String filter) =
      _$TodayHabitsFilteredEvent;

  String get filter;
  @JsonKey(ignore: true)
  $TodayHabitsFilteredEventCopyWith<TodayHabitsFilteredEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayHabitsReloadEventCopyWith<$Res> {
  factory $TodayHabitsReloadEventCopyWith(TodayHabitsReloadEvent value,
          $Res Function(TodayHabitsReloadEvent) then) =
      _$TodayHabitsReloadEventCopyWithImpl<$Res>;
  $Res call({HabitViewModel habit});
}

/// @nodoc
class _$TodayHabitsReloadEventCopyWithImpl<$Res>
    extends _$TodayHabitsEventCopyWithImpl<$Res>
    implements $TodayHabitsReloadEventCopyWith<$Res> {
  _$TodayHabitsReloadEventCopyWithImpl(TodayHabitsReloadEvent _value,
      $Res Function(TodayHabitsReloadEvent) _then)
      : super(_value, (v) => _then(v as TodayHabitsReloadEvent));

  @override
  TodayHabitsReloadEvent get _value => super._value as TodayHabitsReloadEvent;

  @override
  $Res call({
    Object? habit = freezed,
  }) {
    return _then(TodayHabitsReloadEvent(
      habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as HabitViewModel,
    ));
  }
}

/// @nodoc

class _$TodayHabitsReloadEvent
    with DiagnosticableTreeMixin
    implements TodayHabitsReloadEvent {
  const _$TodayHabitsReloadEvent(this.habit);

  @override
  final HabitViewModel habit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodayHabitsEvent.reload(habit: $habit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodayHabitsEvent.reload'))
      ..add(DiagnosticsProperty('habit', habit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodayHabitsReloadEvent &&
            const DeepCollectionEquality().equals(other.habit, habit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(habit));

  @JsonKey(ignore: true)
  @override
  $TodayHabitsReloadEventCopyWith<TodayHabitsReloadEvent> get copyWith =>
      _$TodayHabitsReloadEventCopyWithImpl<TodayHabitsReloadEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String filter) filter,
    required TResult Function(HabitViewModel habit) reload,
  }) {
    return reload(habit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String filter)? filter,
    TResult Function(HabitViewModel habit)? reload,
  }) {
    return reload?.call(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String filter)? filter,
    TResult Function(HabitViewModel habit)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHabitsLoadEvent value) load,
    required TResult Function(TodayHabitsFilteredEvent value) filter,
    required TResult Function(TodayHabitsReloadEvent value) reload,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHabitsLoadEvent value)? load,
    TResult Function(TodayHabitsFilteredEvent value)? filter,
    TResult Function(TodayHabitsReloadEvent value)? reload,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHabitsLoadEvent value)? load,
    TResult Function(TodayHabitsFilteredEvent value)? filter,
    TResult Function(TodayHabitsReloadEvent value)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class TodayHabitsReloadEvent implements TodayHabitsEvent {
  const factory TodayHabitsReloadEvent(HabitViewModel habit) =
      _$TodayHabitsReloadEvent;

  HabitViewModel get habit;
  @JsonKey(ignore: true)
  $TodayHabitsReloadEventCopyWith<TodayHabitsReloadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TodayHabitsStateTearOff {
  const _$TodayHabitsStateTearOff();

  _TodayHabitsInitial initial() {
    return const _TodayHabitsInitial();
  }

  _TodayHabitsLoading loading() {
    return const _TodayHabitsLoading();
  }

  _TodayHabitsEmpty empty() {
    return const _TodayHabitsEmpty();
  }

  _TodayHabitsError error() {
    return const _TodayHabitsError();
  }

  _TodayHabitsLoaded loaded(List<HabitViewModel> completedHabits,
      List<HabitViewModel> unCompletedHabits) {
    return _TodayHabitsLoaded(
      completedHabits,
      unCompletedHabits,
    );
  }
}

/// @nodoc
const $TodayHabitsState = _$TodayHabitsStateTearOff();

/// @nodoc
mixin _$TodayHabitsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodayHabitsInitial value) initial,
    required TResult Function(_TodayHabitsLoading value) loading,
    required TResult Function(_TodayHabitsEmpty value) empty,
    required TResult Function(_TodayHabitsError value) error,
    required TResult Function(_TodayHabitsLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayHabitsStateCopyWith<$Res> {
  factory $TodayHabitsStateCopyWith(
          TodayHabitsState value, $Res Function(TodayHabitsState) then) =
      _$TodayHabitsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodayHabitsStateCopyWithImpl<$Res>
    implements $TodayHabitsStateCopyWith<$Res> {
  _$TodayHabitsStateCopyWithImpl(this._value, this._then);

  final TodayHabitsState _value;
  // ignore: unused_field
  final $Res Function(TodayHabitsState) _then;
}

/// @nodoc
abstract class _$TodayHabitsInitialCopyWith<$Res> {
  factory _$TodayHabitsInitialCopyWith(
          _TodayHabitsInitial value, $Res Function(_TodayHabitsInitial) then) =
      __$TodayHabitsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$TodayHabitsInitialCopyWithImpl<$Res>
    extends _$TodayHabitsStateCopyWithImpl<$Res>
    implements _$TodayHabitsInitialCopyWith<$Res> {
  __$TodayHabitsInitialCopyWithImpl(
      _TodayHabitsInitial _value, $Res Function(_TodayHabitsInitial) _then)
      : super(_value, (v) => _then(v as _TodayHabitsInitial));

  @override
  _TodayHabitsInitial get _value => super._value as _TodayHabitsInitial;
}

/// @nodoc

class _$_TodayHabitsInitial
    with DiagnosticableTreeMixin
    implements _TodayHabitsInitial {
  const _$_TodayHabitsInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodayHabitsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TodayHabitsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TodayHabitsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodayHabitsInitial value) initial,
    required TResult Function(_TodayHabitsLoading value) loading,
    required TResult Function(_TodayHabitsEmpty value) empty,
    required TResult Function(_TodayHabitsError value) error,
    required TResult Function(_TodayHabitsLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TodayHabitsInitial implements TodayHabitsState {
  const factory _TodayHabitsInitial() = _$_TodayHabitsInitial;
}

/// @nodoc
abstract class _$TodayHabitsLoadingCopyWith<$Res> {
  factory _$TodayHabitsLoadingCopyWith(
          _TodayHabitsLoading value, $Res Function(_TodayHabitsLoading) then) =
      __$TodayHabitsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$TodayHabitsLoadingCopyWithImpl<$Res>
    extends _$TodayHabitsStateCopyWithImpl<$Res>
    implements _$TodayHabitsLoadingCopyWith<$Res> {
  __$TodayHabitsLoadingCopyWithImpl(
      _TodayHabitsLoading _value, $Res Function(_TodayHabitsLoading) _then)
      : super(_value, (v) => _then(v as _TodayHabitsLoading));

  @override
  _TodayHabitsLoading get _value => super._value as _TodayHabitsLoading;
}

/// @nodoc

class _$_TodayHabitsLoading
    with DiagnosticableTreeMixin
    implements _TodayHabitsLoading {
  const _$_TodayHabitsLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodayHabitsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TodayHabitsState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TodayHabitsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodayHabitsInitial value) initial,
    required TResult Function(_TodayHabitsLoading value) loading,
    required TResult Function(_TodayHabitsEmpty value) empty,
    required TResult Function(_TodayHabitsError value) error,
    required TResult Function(_TodayHabitsLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TodayHabitsLoading implements TodayHabitsState {
  const factory _TodayHabitsLoading() = _$_TodayHabitsLoading;
}

/// @nodoc
abstract class _$TodayHabitsEmptyCopyWith<$Res> {
  factory _$TodayHabitsEmptyCopyWith(
          _TodayHabitsEmpty value, $Res Function(_TodayHabitsEmpty) then) =
      __$TodayHabitsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$TodayHabitsEmptyCopyWithImpl<$Res>
    extends _$TodayHabitsStateCopyWithImpl<$Res>
    implements _$TodayHabitsEmptyCopyWith<$Res> {
  __$TodayHabitsEmptyCopyWithImpl(
      _TodayHabitsEmpty _value, $Res Function(_TodayHabitsEmpty) _then)
      : super(_value, (v) => _then(v as _TodayHabitsEmpty));

  @override
  _TodayHabitsEmpty get _value => super._value as _TodayHabitsEmpty;
}

/// @nodoc

class _$_TodayHabitsEmpty
    with DiagnosticableTreeMixin
    implements _TodayHabitsEmpty {
  const _$_TodayHabitsEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodayHabitsState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TodayHabitsState.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TodayHabitsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodayHabitsInitial value) initial,
    required TResult Function(_TodayHabitsLoading value) loading,
    required TResult Function(_TodayHabitsEmpty value) empty,
    required TResult Function(_TodayHabitsError value) error,
    required TResult Function(_TodayHabitsLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _TodayHabitsEmpty implements TodayHabitsState {
  const factory _TodayHabitsEmpty() = _$_TodayHabitsEmpty;
}

/// @nodoc
abstract class _$TodayHabitsErrorCopyWith<$Res> {
  factory _$TodayHabitsErrorCopyWith(
          _TodayHabitsError value, $Res Function(_TodayHabitsError) then) =
      __$TodayHabitsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$TodayHabitsErrorCopyWithImpl<$Res>
    extends _$TodayHabitsStateCopyWithImpl<$Res>
    implements _$TodayHabitsErrorCopyWith<$Res> {
  __$TodayHabitsErrorCopyWithImpl(
      _TodayHabitsError _value, $Res Function(_TodayHabitsError) _then)
      : super(_value, (v) => _then(v as _TodayHabitsError));

  @override
  _TodayHabitsError get _value => super._value as _TodayHabitsError;
}

/// @nodoc

class _$_TodayHabitsError
    with DiagnosticableTreeMixin
    implements _TodayHabitsError {
  const _$_TodayHabitsError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodayHabitsState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TodayHabitsState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TodayHabitsError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)
        loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodayHabitsInitial value) initial,
    required TResult Function(_TodayHabitsLoading value) loading,
    required TResult Function(_TodayHabitsEmpty value) empty,
    required TResult Function(_TodayHabitsError value) error,
    required TResult Function(_TodayHabitsLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TodayHabitsError implements TodayHabitsState {
  const factory _TodayHabitsError() = _$_TodayHabitsError;
}

/// @nodoc
abstract class _$TodayHabitsLoadedCopyWith<$Res> {
  factory _$TodayHabitsLoadedCopyWith(
          _TodayHabitsLoaded value, $Res Function(_TodayHabitsLoaded) then) =
      __$TodayHabitsLoadedCopyWithImpl<$Res>;
  $Res call(
      {List<HabitViewModel> completedHabits,
      List<HabitViewModel> unCompletedHabits});
}

/// @nodoc
class __$TodayHabitsLoadedCopyWithImpl<$Res>
    extends _$TodayHabitsStateCopyWithImpl<$Res>
    implements _$TodayHabitsLoadedCopyWith<$Res> {
  __$TodayHabitsLoadedCopyWithImpl(
      _TodayHabitsLoaded _value, $Res Function(_TodayHabitsLoaded) _then)
      : super(_value, (v) => _then(v as _TodayHabitsLoaded));

  @override
  _TodayHabitsLoaded get _value => super._value as _TodayHabitsLoaded;

  @override
  $Res call({
    Object? completedHabits = freezed,
    Object? unCompletedHabits = freezed,
  }) {
    return _then(_TodayHabitsLoaded(
      completedHabits == freezed
          ? _value.completedHabits
          : completedHabits // ignore: cast_nullable_to_non_nullable
              as List<HabitViewModel>,
      unCompletedHabits == freezed
          ? _value.unCompletedHabits
          : unCompletedHabits // ignore: cast_nullable_to_non_nullable
              as List<HabitViewModel>,
    ));
  }
}

/// @nodoc

class _$_TodayHabitsLoaded
    with DiagnosticableTreeMixin
    implements _TodayHabitsLoaded {
  const _$_TodayHabitsLoaded(this.completedHabits, this.unCompletedHabits);

  @override
  final List<HabitViewModel> completedHabits;
  @override
  final List<HabitViewModel> unCompletedHabits;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodayHabitsState.loaded(completedHabits: $completedHabits, unCompletedHabits: $unCompletedHabits)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodayHabitsState.loaded'))
      ..add(DiagnosticsProperty('completedHabits', completedHabits))
      ..add(DiagnosticsProperty('unCompletedHabits', unCompletedHabits));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodayHabitsLoaded &&
            const DeepCollectionEquality()
                .equals(other.completedHabits, completedHabits) &&
            const DeepCollectionEquality()
                .equals(other.unCompletedHabits, unCompletedHabits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(completedHabits),
      const DeepCollectionEquality().hash(unCompletedHabits));

  @JsonKey(ignore: true)
  @override
  _$TodayHabitsLoadedCopyWith<_TodayHabitsLoaded> get copyWith =>
      __$TodayHabitsLoadedCopyWithImpl<_TodayHabitsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)
        loaded,
  }) {
    return loaded(completedHabits, unCompletedHabits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
  }) {
    return loaded?.call(completedHabits, unCompletedHabits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function(List<HabitViewModel> completedHabits,
            List<HabitViewModel> unCompletedHabits)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(completedHabits, unCompletedHabits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodayHabitsInitial value) initial,
    required TResult Function(_TodayHabitsLoading value) loading,
    required TResult Function(_TodayHabitsEmpty value) empty,
    required TResult Function(_TodayHabitsError value) error,
    required TResult Function(_TodayHabitsLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodayHabitsInitial value)? initial,
    TResult Function(_TodayHabitsLoading value)? loading,
    TResult Function(_TodayHabitsEmpty value)? empty,
    TResult Function(_TodayHabitsError value)? error,
    TResult Function(_TodayHabitsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TodayHabitsLoaded implements TodayHabitsState {
  const factory _TodayHabitsLoaded(List<HabitViewModel> completedHabits,
      List<HabitViewModel> unCompletedHabits) = _$_TodayHabitsLoaded;

  List<HabitViewModel> get completedHabits;
  List<HabitViewModel> get unCompletedHabits;
  @JsonKey(ignore: true)
  _$TodayHabitsLoadedCopyWith<_TodayHabitsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
