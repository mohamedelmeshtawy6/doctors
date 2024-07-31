// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() internetLoading,
    required TResult Function() internetSuccess,
    required TResult Function() internetFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? internetLoading,
    TResult? Function()? internetSuccess,
    TResult? Function()? internetFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetLoading,
    TResult Function()? internetSuccess,
    TResult Function()? internetFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(IntenetLoading<T> value) internetLoading,
    required TResult Function(IntenetSuccess<T> value) internetSuccess,
    required TResult Function(IntenetFailed<T> value) internetFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(IntenetLoading<T> value)? internetLoading,
    TResult? Function(IntenetSuccess<T> value)? internetSuccess,
    TResult? Function(IntenetFailed<T> value)? internetFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(IntenetLoading<T> value)? internetLoading,
    TResult Function(IntenetSuccess<T> value)? internetSuccess,
    TResult Function(IntenetFailed<T> value)? internetFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<T, $Res> {
  factory $SettingStateCopyWith(
          SettingState<T> value, $Res Function(SettingState<T>) then) =
      _$SettingStateCopyWithImpl<T, $Res, SettingState<T>>;
}

/// @nodoc
class _$SettingStateCopyWithImpl<T, $Res, $Val extends SettingState<T>>
    implements $SettingStateCopyWith<T, $Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SettingStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SettingState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() internetLoading,
    required TResult Function() internetSuccess,
    required TResult Function() internetFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? internetLoading,
    TResult? Function()? internetSuccess,
    TResult? Function()? internetFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetLoading,
    TResult Function()? internetSuccess,
    TResult Function()? internetFailed,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(IntenetLoading<T> value) internetLoading,
    required TResult Function(IntenetSuccess<T> value) internetSuccess,
    required TResult Function(IntenetFailed<T> value) internetFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(IntenetLoading<T> value)? internetLoading,
    TResult? Function(IntenetSuccess<T> value)? internetSuccess,
    TResult? Function(IntenetFailed<T> value)? internetFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(IntenetLoading<T> value)? internetLoading,
    TResult Function(IntenetSuccess<T> value)? internetSuccess,
    TResult Function(IntenetFailed<T> value)? internetFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SettingState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$IntenetLoadingImplCopyWith<T, $Res> {
  factory _$$IntenetLoadingImplCopyWith(_$IntenetLoadingImpl<T> value,
          $Res Function(_$IntenetLoadingImpl<T>) then) =
      __$$IntenetLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IntenetLoadingImplCopyWithImpl<T, $Res>
    extends _$SettingStateCopyWithImpl<T, $Res, _$IntenetLoadingImpl<T>>
    implements _$$IntenetLoadingImplCopyWith<T, $Res> {
  __$$IntenetLoadingImplCopyWithImpl(_$IntenetLoadingImpl<T> _value,
      $Res Function(_$IntenetLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IntenetLoadingImpl<T> implements IntenetLoading<T> {
  const _$IntenetLoadingImpl();

  @override
  String toString() {
    return 'SettingState<$T>.internetLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IntenetLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() internetLoading,
    required TResult Function() internetSuccess,
    required TResult Function() internetFailed,
  }) {
    return internetLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? internetLoading,
    TResult? Function()? internetSuccess,
    TResult? Function()? internetFailed,
  }) {
    return internetLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetLoading,
    TResult Function()? internetSuccess,
    TResult Function()? internetFailed,
    required TResult orElse(),
  }) {
    if (internetLoading != null) {
      return internetLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(IntenetLoading<T> value) internetLoading,
    required TResult Function(IntenetSuccess<T> value) internetSuccess,
    required TResult Function(IntenetFailed<T> value) internetFailed,
  }) {
    return internetLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(IntenetLoading<T> value)? internetLoading,
    TResult? Function(IntenetSuccess<T> value)? internetSuccess,
    TResult? Function(IntenetFailed<T> value)? internetFailed,
  }) {
    return internetLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(IntenetLoading<T> value)? internetLoading,
    TResult Function(IntenetSuccess<T> value)? internetSuccess,
    TResult Function(IntenetFailed<T> value)? internetFailed,
    required TResult orElse(),
  }) {
    if (internetLoading != null) {
      return internetLoading(this);
    }
    return orElse();
  }
}

abstract class IntenetLoading<T> implements SettingState<T> {
  const factory IntenetLoading() = _$IntenetLoadingImpl<T>;
}

/// @nodoc
abstract class _$$IntenetSuccessImplCopyWith<T, $Res> {
  factory _$$IntenetSuccessImplCopyWith(_$IntenetSuccessImpl<T> value,
          $Res Function(_$IntenetSuccessImpl<T>) then) =
      __$$IntenetSuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IntenetSuccessImplCopyWithImpl<T, $Res>
    extends _$SettingStateCopyWithImpl<T, $Res, _$IntenetSuccessImpl<T>>
    implements _$$IntenetSuccessImplCopyWith<T, $Res> {
  __$$IntenetSuccessImplCopyWithImpl(_$IntenetSuccessImpl<T> _value,
      $Res Function(_$IntenetSuccessImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IntenetSuccessImpl<T> implements IntenetSuccess<T> {
  const _$IntenetSuccessImpl();

  @override
  String toString() {
    return 'SettingState<$T>.internetSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IntenetSuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() internetLoading,
    required TResult Function() internetSuccess,
    required TResult Function() internetFailed,
  }) {
    return internetSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? internetLoading,
    TResult? Function()? internetSuccess,
    TResult? Function()? internetFailed,
  }) {
    return internetSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetLoading,
    TResult Function()? internetSuccess,
    TResult Function()? internetFailed,
    required TResult orElse(),
  }) {
    if (internetSuccess != null) {
      return internetSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(IntenetLoading<T> value) internetLoading,
    required TResult Function(IntenetSuccess<T> value) internetSuccess,
    required TResult Function(IntenetFailed<T> value) internetFailed,
  }) {
    return internetSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(IntenetLoading<T> value)? internetLoading,
    TResult? Function(IntenetSuccess<T> value)? internetSuccess,
    TResult? Function(IntenetFailed<T> value)? internetFailed,
  }) {
    return internetSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(IntenetLoading<T> value)? internetLoading,
    TResult Function(IntenetSuccess<T> value)? internetSuccess,
    TResult Function(IntenetFailed<T> value)? internetFailed,
    required TResult orElse(),
  }) {
    if (internetSuccess != null) {
      return internetSuccess(this);
    }
    return orElse();
  }
}

abstract class IntenetSuccess<T> implements SettingState<T> {
  const factory IntenetSuccess() = _$IntenetSuccessImpl<T>;
}

/// @nodoc
abstract class _$$IntenetFailedImplCopyWith<T, $Res> {
  factory _$$IntenetFailedImplCopyWith(_$IntenetFailedImpl<T> value,
          $Res Function(_$IntenetFailedImpl<T>) then) =
      __$$IntenetFailedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IntenetFailedImplCopyWithImpl<T, $Res>
    extends _$SettingStateCopyWithImpl<T, $Res, _$IntenetFailedImpl<T>>
    implements _$$IntenetFailedImplCopyWith<T, $Res> {
  __$$IntenetFailedImplCopyWithImpl(_$IntenetFailedImpl<T> _value,
      $Res Function(_$IntenetFailedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IntenetFailedImpl<T> implements IntenetFailed<T> {
  const _$IntenetFailedImpl();

  @override
  String toString() {
    return 'SettingState<$T>.internetFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IntenetFailedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() internetLoading,
    required TResult Function() internetSuccess,
    required TResult Function() internetFailed,
  }) {
    return internetFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? internetLoading,
    TResult? Function()? internetSuccess,
    TResult? Function()? internetFailed,
  }) {
    return internetFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetLoading,
    TResult Function()? internetSuccess,
    TResult Function()? internetFailed,
    required TResult orElse(),
  }) {
    if (internetFailed != null) {
      return internetFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(IntenetLoading<T> value) internetLoading,
    required TResult Function(IntenetSuccess<T> value) internetSuccess,
    required TResult Function(IntenetFailed<T> value) internetFailed,
  }) {
    return internetFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(IntenetLoading<T> value)? internetLoading,
    TResult? Function(IntenetSuccess<T> value)? internetSuccess,
    TResult? Function(IntenetFailed<T> value)? internetFailed,
  }) {
    return internetFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(IntenetLoading<T> value)? internetLoading,
    TResult Function(IntenetSuccess<T> value)? internetSuccess,
    TResult Function(IntenetFailed<T> value)? internetFailed,
    required TResult orElse(),
  }) {
    if (internetFailed != null) {
      return internetFailed(this);
    }
    return orElse();
  }
}

abstract class IntenetFailed<T> implements SettingState<T> {
  const factory IntenetFailed() = _$IntenetFailedImpl<T>;
}
