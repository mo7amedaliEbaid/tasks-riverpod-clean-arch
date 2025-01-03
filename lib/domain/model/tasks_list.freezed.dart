// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskList {
  List<Task> get values => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListCopyWith<TaskList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListCopyWith<$Res> {
  factory $TaskListCopyWith(TaskList value, $Res Function(TaskList) then) =
      _$TaskListCopyWithImpl<$Res, TaskList>;
  @useResult
  $Res call({List<Task> values});
}

/// @nodoc
class _$TaskListCopyWithImpl<$Res, $Val extends TaskList>
    implements $TaskListCopyWith<$Res> {
  _$TaskListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskListImplCopyWith<$Res>
    implements $TaskListCopyWith<$Res> {
  factory _$$TaskListImplCopyWith(
          _$TaskListImpl value, $Res Function(_$TaskListImpl) then) =
      __$$TaskListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> values});
}

/// @nodoc
class __$$TaskListImplCopyWithImpl<$Res>
    extends _$TaskListCopyWithImpl<$Res, _$TaskListImpl>
    implements _$$TaskListImplCopyWith<$Res> {
  __$$TaskListImplCopyWithImpl(
      _$TaskListImpl _value, $Res Function(_$TaskListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$TaskListImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$TaskListImpl extends _TaskList {
  const _$TaskListImpl({required final List<Task> values})
      : _values = values,
        super._();

  final List<Task> _values;
  @override
  List<Task> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'TaskList(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListImplCopyWith<_$TaskListImpl> get copyWith =>
      __$$TaskListImplCopyWithImpl<_$TaskListImpl>(this, _$identity);
}

abstract class _TaskList extends TaskList {
  const factory _TaskList({required final List<Task> values}) = _$TaskListImpl;
  const _TaskList._() : super._();

  @override
  List<Task> get values;
  @override
  @JsonKey(ignore: true)
  _$$TaskListImplCopyWith<_$TaskListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
