// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$State<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_init<T> value) init,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_success<T> value) success,
    required TResult Function(_error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_init<T> value)? init,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_success<T> value)? success,
    TResult? Function(_error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<T, $Res> {
  factory $StateCopyWith(State<T> value, $Res Function(State<T>) then) =
      _$StateCopyWithImpl<T, $Res, State<T>>;
}

/// @nodoc
class _$StateCopyWithImpl<T, $Res, $Val extends State<T>>
    implements $StateCopyWith<T, $Res> {
  _$StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$initImplCopyWith<T, $Res> {
  factory _$$initImplCopyWith(
          _$initImpl<T> value, $Res Function(_$initImpl<T>) then) =
      __$$initImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$initImplCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$initImpl<T>>
    implements _$$initImplCopyWith<T, $Res> {
  __$$initImplCopyWithImpl(
      _$initImpl<T> _value, $Res Function(_$initImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initImpl<T> extends _init<T> {
  const _$initImpl() : super._();

  @override
  String toString() {
    return 'State<$T>.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Exception exception) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Exception exception)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_init<T> value) init,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_success<T> value) success,
    required TResult Function(_error<T> value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_init<T> value)? init,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_success<T> value)? success,
    TResult? Function(_error<T> value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _init<T> extends State<T> {
  const factory _init() = _$initImpl<T>;
  const _init._() : super._();
}

/// @nodoc
abstract class _$$loadingImplCopyWith<T, $Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl<T> value, $Res Function(_$loadingImpl<T>) then) =
      __$$loadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$loadingImpl<T>>
    implements _$$loadingImplCopyWith<T, $Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl<T> _value, $Res Function(_$loadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingImpl<T> extends _loading<T> {
  const _$loadingImpl() : super._();

  @override
  String toString() {
    return 'State<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Exception exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Exception exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Exception exception)? error,
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
    required TResult Function(_init<T> value) init,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_success<T> value) success,
    required TResult Function(_error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_init<T> value)? init,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_success<T> value)? success,
    TResult? Function(_error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading<T> extends State<T> {
  const factory _loading() = _$loadingImpl<T>;
  const _loading._() : super._();
}

/// @nodoc
abstract class _$$successImplCopyWith<T, $Res> {
  factory _$$successImplCopyWith(
          _$successImpl<T> value, $Res Function(_$successImpl<T>) then) =
      __$$successImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$successImplCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$successImpl<T>>
    implements _$$successImplCopyWith<T, $Res> {
  __$$successImplCopyWithImpl(
      _$successImpl<T> _value, $Res Function(_$successImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$successImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$successImpl<T> extends _success<T> {
  const _$successImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'State<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<T, _$successImpl<T>> get copyWith =>
      __$$successImplCopyWithImpl<T, _$successImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Exception exception) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Exception exception)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_init<T> value) init,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_success<T> value) success,
    required TResult Function(_error<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_init<T> value)? init,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_success<T> value)? success,
    TResult? Function(_error<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success<T> extends State<T> {
  const factory _success(final T data) = _$successImpl<T>;
  const _success._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<T, _$successImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$errorImplCopyWith<T, $Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl<T> value, $Res Function(_$errorImpl<T>) then) =
      __$$errorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$errorImplCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$errorImpl<T>>
    implements _$$errorImplCopyWith<T, $Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl<T> _value, $Res Function(_$errorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$errorImpl<T>(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$errorImpl<T> extends _error<T> {
  const _$errorImpl(this.exception) : super._();

  @override
  final Exception exception;

  @override
  String toString() {
    return 'State<$T>.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorImpl<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$errorImplCopyWith<T, _$errorImpl<T>> get copyWith =>
      __$$errorImplCopyWithImpl<T, _$errorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Exception exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Exception exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_init<T> value) init,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_success<T> value) success,
    required TResult Function(_error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_init<T> value)? init,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_success<T> value)? success,
    TResult? Function(_error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error<T> extends State<T> {
  const factory _error(final Exception exception) = _$errorImpl<T>;
  const _error._() : super._();

  Exception get exception;
  @JsonKey(ignore: true)
  _$$errorImplCopyWith<T, _$errorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
