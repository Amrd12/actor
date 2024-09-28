// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImagesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ImgesModel mix) success,
    required TResult Function(String error) Error,
    required TResult Function() Load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ImgesModel mix)? success,
    TResult? Function(String error)? Error,
    TResult? Function()? Load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ImgesModel mix)? success,
    TResult Function(String error)? Error,
    TResult Function()? Load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ImageSuccess value) success,
    required TResult Function(ImageError value) Error,
    required TResult Function(ImageLoad value) Load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ImageSuccess value)? success,
    TResult? Function(ImageError value)? Error,
    TResult? Function(ImageLoad value)? Load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ImageSuccess value)? success,
    TResult Function(ImageError value)? Error,
    TResult Function(ImageLoad value)? Load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesStateCopyWith<$Res> {
  factory $ImagesStateCopyWith(
          ImagesState value, $Res Function(ImagesState) then) =
      _$ImagesStateCopyWithImpl<$Res, ImagesState>;
}

/// @nodoc
class _$ImagesStateCopyWithImpl<$Res, $Val extends ImagesState>
    implements $ImagesStateCopyWith<$Res> {
  _$ImagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ImagesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ImgesModel mix) success,
    required TResult Function(String error) Error,
    required TResult Function() Load,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ImgesModel mix)? success,
    TResult? Function(String error)? Error,
    TResult? Function()? Load,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ImgesModel mix)? success,
    TResult Function(String error)? Error,
    TResult Function()? Load,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(ImageSuccess value) success,
    required TResult Function(ImageError value) Error,
    required TResult Function(ImageLoad value) Load,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ImageSuccess value)? success,
    TResult? Function(ImageError value)? Error,
    TResult? Function(ImageLoad value)? Load,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ImageSuccess value)? success,
    TResult Function(ImageError value)? Error,
    TResult Function(ImageLoad value)? Load,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ImagesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ImageSuccessImplCopyWith<$Res> {
  factory _$$ImageSuccessImplCopyWith(
          _$ImageSuccessImpl value, $Res Function(_$ImageSuccessImpl) then) =
      __$$ImageSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImgesModel mix});
}

/// @nodoc
class __$$ImageSuccessImplCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res, _$ImageSuccessImpl>
    implements _$$ImageSuccessImplCopyWith<$Res> {
  __$$ImageSuccessImplCopyWithImpl(
      _$ImageSuccessImpl _value, $Res Function(_$ImageSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mix = null,
  }) {
    return _then(_$ImageSuccessImpl(
      mix: null == mix
          ? _value.mix
          : mix // ignore: cast_nullable_to_non_nullable
              as ImgesModel,
    ));
  }
}

/// @nodoc

class _$ImageSuccessImpl implements ImageSuccess {
  const _$ImageSuccessImpl({required this.mix});

  @override
  final ImgesModel mix;

  @override
  String toString() {
    return 'ImagesState.success(mix: $mix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSuccessImpl &&
            (identical(other.mix, mix) || other.mix == mix));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mix);

  /// Create a copy of ImagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSuccessImplCopyWith<_$ImageSuccessImpl> get copyWith =>
      __$$ImageSuccessImplCopyWithImpl<_$ImageSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ImgesModel mix) success,
    required TResult Function(String error) Error,
    required TResult Function() Load,
  }) {
    return success(mix);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ImgesModel mix)? success,
    TResult? Function(String error)? Error,
    TResult? Function()? Load,
  }) {
    return success?.call(mix);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ImgesModel mix)? success,
    TResult Function(String error)? Error,
    TResult Function()? Load,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(mix);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ImageSuccess value) success,
    required TResult Function(ImageError value) Error,
    required TResult Function(ImageLoad value) Load,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ImageSuccess value)? success,
    TResult? Function(ImageError value)? Error,
    TResult? Function(ImageLoad value)? Load,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ImageSuccess value)? success,
    TResult Function(ImageError value)? Error,
    TResult Function(ImageLoad value)? Load,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ImageSuccess implements ImagesState {
  const factory ImageSuccess({required final ImgesModel mix}) =
      _$ImageSuccessImpl;

  ImgesModel get mix;

  /// Create a copy of ImagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSuccessImplCopyWith<_$ImageSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageErrorImplCopyWith<$Res> {
  factory _$$ImageErrorImplCopyWith(
          _$ImageErrorImpl value, $Res Function(_$ImageErrorImpl) then) =
      __$$ImageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ImageErrorImplCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res, _$ImageErrorImpl>
    implements _$$ImageErrorImplCopyWith<$Res> {
  __$$ImageErrorImplCopyWithImpl(
      _$ImageErrorImpl _value, $Res Function(_$ImageErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ImageErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageErrorImpl implements ImageError {
  const _$ImageErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ImagesState.Error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ImagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageErrorImplCopyWith<_$ImageErrorImpl> get copyWith =>
      __$$ImageErrorImplCopyWithImpl<_$ImageErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ImgesModel mix) success,
    required TResult Function(String error) Error,
    required TResult Function() Load,
  }) {
    return Error(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ImgesModel mix)? success,
    TResult? Function(String error)? Error,
    TResult? Function()? Load,
  }) {
    return Error?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ImgesModel mix)? success,
    TResult Function(String error)? Error,
    TResult Function()? Load,
    required TResult orElse(),
  }) {
    if (Error != null) {
      return Error(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ImageSuccess value) success,
    required TResult Function(ImageError value) Error,
    required TResult Function(ImageLoad value) Load,
  }) {
    return Error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ImageSuccess value)? success,
    TResult? Function(ImageError value)? Error,
    TResult? Function(ImageLoad value)? Load,
  }) {
    return Error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ImageSuccess value)? success,
    TResult Function(ImageError value)? Error,
    TResult Function(ImageLoad value)? Load,
    required TResult orElse(),
  }) {
    if (Error != null) {
      return Error(this);
    }
    return orElse();
  }
}

abstract class ImageError implements ImagesState {
  const factory ImageError({required final String error}) = _$ImageErrorImpl;

  String get error;

  /// Create a copy of ImagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageErrorImplCopyWith<_$ImageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageLoadImplCopyWith<$Res> {
  factory _$$ImageLoadImplCopyWith(
          _$ImageLoadImpl value, $Res Function(_$ImageLoadImpl) then) =
      __$$ImageLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageLoadImplCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res, _$ImageLoadImpl>
    implements _$$ImageLoadImplCopyWith<$Res> {
  __$$ImageLoadImplCopyWithImpl(
      _$ImageLoadImpl _value, $Res Function(_$ImageLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ImageLoadImpl implements ImageLoad {
  const _$ImageLoadImpl();

  @override
  String toString() {
    return 'ImagesState.Load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImageLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ImgesModel mix) success,
    required TResult Function(String error) Error,
    required TResult Function() Load,
  }) {
    return Load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ImgesModel mix)? success,
    TResult? Function(String error)? Error,
    TResult? Function()? Load,
  }) {
    return Load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ImgesModel mix)? success,
    TResult Function(String error)? Error,
    TResult Function()? Load,
    required TResult orElse(),
  }) {
    if (Load != null) {
      return Load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ImageSuccess value) success,
    required TResult Function(ImageError value) Error,
    required TResult Function(ImageLoad value) Load,
  }) {
    return Load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ImageSuccess value)? success,
    TResult? Function(ImageError value)? Error,
    TResult? Function(ImageLoad value)? Load,
  }) {
    return Load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ImageSuccess value)? success,
    TResult Function(ImageError value)? Error,
    TResult Function(ImageLoad value)? Load,
    required TResult orElse(),
  }) {
    if (Load != null) {
      return Load(this);
    }
    return orElse();
  }
}

abstract class ImageLoad implements ImagesState {
  const factory ImageLoad() = _$ImageLoadImpl;
}
