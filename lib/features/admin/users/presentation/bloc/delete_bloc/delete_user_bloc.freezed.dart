// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userId) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userId)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userId)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DeleteUser value) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteUser value)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteUserEventCopyWith<$Res> {
  factory $DeleteUserEventCopyWith(
          DeleteUserEvent value, $Res Function(DeleteUserEvent) then) =
      _$DeleteUserEventCopyWithImpl<$Res, DeleteUserEvent>;
}

/// @nodoc
class _$DeleteUserEventCopyWithImpl<$Res, $Val extends DeleteUserEvent>
    implements $DeleteUserEventCopyWith<$Res> {
  _$DeleteUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DeleteUserEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DeleteUserEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userId) deleteUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userId)? deleteUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userId)? deleteUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DeleteUser value) deleteUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteUser value)? deleteUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DeleteUserEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DeleteUserImplCopyWith<$Res> {
  factory _$$DeleteUserImplCopyWith(
          _$DeleteUserImpl value, $Res Function(_$DeleteUserImpl) then) =
      __$$DeleteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$DeleteUserImplCopyWithImpl<$Res>
    extends _$DeleteUserEventCopyWithImpl<$Res, _$DeleteUserImpl>
    implements _$$DeleteUserImplCopyWith<$Res> {
  __$$DeleteUserImplCopyWithImpl(
      _$DeleteUserImpl _value, $Res Function(_$DeleteUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$DeleteUserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteUserImpl implements DeleteUser {
  const _$DeleteUserImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'DeleteUserEvent.deleteUser(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      __$$DeleteUserImplCopyWithImpl<_$DeleteUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userId) deleteUser,
  }) {
    return deleteUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userId)? deleteUser,
  }) {
    return deleteUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userId)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DeleteUser value) deleteUser,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteUser value)? deleteUser,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements DeleteUserEvent {
  const factory DeleteUser({required final String userId}) = _$DeleteUserImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userId) deleteLoading,
    required TResult Function() deletedSuccess,
    required TResult Function(String error) deletedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userId)? deleteLoading,
    TResult? Function()? deletedSuccess,
    TResult? Function(String error)? deletedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userId)? deleteLoading,
    TResult Function()? deletedSuccess,
    TResult Function(String error)? deletedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteLoading value) deleteLoading,
    required TResult Function(DeletedSucces value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteLoading value)? deleteLoading,
    TResult? Function(DeletedSucces value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteLoading value)? deleteLoading,
    TResult Function(DeletedSucces value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteUserStateCopyWith<$Res> {
  factory $DeleteUserStateCopyWith(
          DeleteUserState value, $Res Function(DeleteUserState) then) =
      _$DeleteUserStateCopyWithImpl<$Res, DeleteUserState>;
}

/// @nodoc
class _$DeleteUserStateCopyWithImpl<$Res, $Val extends DeleteUserState>
    implements $DeleteUserStateCopyWith<$Res> {
  _$DeleteUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DeleteUserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DeleteUserState.initial()';
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
    required TResult Function(String userId) deleteLoading,
    required TResult Function() deletedSuccess,
    required TResult Function(String error) deletedError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userId)? deleteLoading,
    TResult? Function()? deletedSuccess,
    TResult? Function(String error)? deletedError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userId)? deleteLoading,
    TResult Function()? deletedSuccess,
    TResult Function(String error)? deletedError,
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
    required TResult Function(DeleteLoading value) deleteLoading,
    required TResult Function(DeletedSucces value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteLoading value)? deleteLoading,
    TResult? Function(DeletedSucces value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteLoading value)? deleteLoading,
    TResult Function(DeletedSucces value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeleteUserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DeleteLoadingImplCopyWith<$Res> {
  factory _$$DeleteLoadingImplCopyWith(
          _$DeleteLoadingImpl value, $Res Function(_$DeleteLoadingImpl) then) =
      __$$DeleteLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$DeleteLoadingImplCopyWithImpl<$Res>
    extends _$DeleteUserStateCopyWithImpl<$Res, _$DeleteLoadingImpl>
    implements _$$DeleteLoadingImplCopyWith<$Res> {
  __$$DeleteLoadingImplCopyWithImpl(
      _$DeleteLoadingImpl _value, $Res Function(_$DeleteLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$DeleteLoadingImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteLoadingImpl implements DeleteLoading {
  const _$DeleteLoadingImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'DeleteUserState.deleteLoading(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLoadingImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLoadingImplCopyWith<_$DeleteLoadingImpl> get copyWith =>
      __$$DeleteLoadingImplCopyWithImpl<_$DeleteLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userId) deleteLoading,
    required TResult Function() deletedSuccess,
    required TResult Function(String error) deletedError,
  }) {
    return deleteLoading(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userId)? deleteLoading,
    TResult? Function()? deletedSuccess,
    TResult? Function(String error)? deletedError,
  }) {
    return deleteLoading?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userId)? deleteLoading,
    TResult Function()? deletedSuccess,
    TResult Function(String error)? deletedError,
    required TResult orElse(),
  }) {
    if (deleteLoading != null) {
      return deleteLoading(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteLoading value) deleteLoading,
    required TResult Function(DeletedSucces value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
  }) {
    return deleteLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteLoading value)? deleteLoading,
    TResult? Function(DeletedSucces value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
  }) {
    return deleteLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteLoading value)? deleteLoading,
    TResult Function(DeletedSucces value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    required TResult orElse(),
  }) {
    if (deleteLoading != null) {
      return deleteLoading(this);
    }
    return orElse();
  }
}

abstract class DeleteLoading implements DeleteUserState {
  const factory DeleteLoading({required final String userId}) =
      _$DeleteLoadingImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$DeleteLoadingImplCopyWith<_$DeleteLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedSuccesImplCopyWith<$Res> {
  factory _$$DeletedSuccesImplCopyWith(
          _$DeletedSuccesImpl value, $Res Function(_$DeletedSuccesImpl) then) =
      __$$DeletedSuccesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedSuccesImplCopyWithImpl<$Res>
    extends _$DeleteUserStateCopyWithImpl<$Res, _$DeletedSuccesImpl>
    implements _$$DeletedSuccesImplCopyWith<$Res> {
  __$$DeletedSuccesImplCopyWithImpl(
      _$DeletedSuccesImpl _value, $Res Function(_$DeletedSuccesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletedSuccesImpl implements DeletedSucces {
  const _$DeletedSuccesImpl();

  @override
  String toString() {
    return 'DeleteUserState.deletedSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedSuccesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userId) deleteLoading,
    required TResult Function() deletedSuccess,
    required TResult Function(String error) deletedError,
  }) {
    return deletedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userId)? deleteLoading,
    TResult? Function()? deletedSuccess,
    TResult? Function(String error)? deletedError,
  }) {
    return deletedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userId)? deleteLoading,
    TResult Function()? deletedSuccess,
    TResult Function(String error)? deletedError,
    required TResult orElse(),
  }) {
    if (deletedSuccess != null) {
      return deletedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteLoading value) deleteLoading,
    required TResult Function(DeletedSucces value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
  }) {
    return deletedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteLoading value)? deleteLoading,
    TResult? Function(DeletedSucces value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
  }) {
    return deletedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteLoading value)? deleteLoading,
    TResult Function(DeletedSucces value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    required TResult orElse(),
  }) {
    if (deletedSuccess != null) {
      return deletedSuccess(this);
    }
    return orElse();
  }
}

abstract class DeletedSucces implements DeleteUserState {
  const factory DeletedSucces() = _$DeletedSuccesImpl;
}

/// @nodoc
abstract class _$$DeletedErrorImplCopyWith<$Res> {
  factory _$$DeletedErrorImplCopyWith(
          _$DeletedErrorImpl value, $Res Function(_$DeletedErrorImpl) then) =
      __$$DeletedErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DeletedErrorImplCopyWithImpl<$Res>
    extends _$DeleteUserStateCopyWithImpl<$Res, _$DeletedErrorImpl>
    implements _$$DeletedErrorImplCopyWith<$Res> {
  __$$DeletedErrorImplCopyWithImpl(
      _$DeletedErrorImpl _value, $Res Function(_$DeletedErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DeletedErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletedErrorImpl implements DeletedError {
  const _$DeletedErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DeleteUserState.deletedError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedErrorImplCopyWith<_$DeletedErrorImpl> get copyWith =>
      __$$DeletedErrorImplCopyWithImpl<_$DeletedErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userId) deleteLoading,
    required TResult Function() deletedSuccess,
    required TResult Function(String error) deletedError,
  }) {
    return deletedError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userId)? deleteLoading,
    TResult? Function()? deletedSuccess,
    TResult? Function(String error)? deletedError,
  }) {
    return deletedError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userId)? deleteLoading,
    TResult Function()? deletedSuccess,
    TResult Function(String error)? deletedError,
    required TResult orElse(),
  }) {
    if (deletedError != null) {
      return deletedError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteLoading value) deleteLoading,
    required TResult Function(DeletedSucces value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
  }) {
    return deletedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteLoading value)? deleteLoading,
    TResult? Function(DeletedSucces value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
  }) {
    return deletedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteLoading value)? deleteLoading,
    TResult Function(DeletedSucces value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    required TResult orElse(),
  }) {
    if (deletedError != null) {
      return deletedError(this);
    }
    return orElse();
  }
}

abstract class DeletedError implements DeleteUserState {
  const factory DeletedError({required final String error}) =
      _$DeletedErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$DeletedErrorImplCopyWith<_$DeletedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
