// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isLoading) getAllUsers,
    required TResult Function(String? searchName) searchForUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isLoading)? getAllUsers,
    TResult? Function(String? searchName)? searchForUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isLoading)? getAllUsers,
    TResult Function(String? searchName)? searchForUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllUsersEvent value) getAllUsers,
    required TResult Function(SearchForUserEvent value) searchForUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsersEvent value)? getAllUsers,
    TResult? Function(SearchForUserEvent value)? searchForUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsersEvent value)? getAllUsers,
    TResult Function(SearchForUserEvent value)? searchForUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

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
    extends _$UsersEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'UsersEvent.started()';
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
    required TResult Function(bool isLoading) getAllUsers,
    required TResult Function(String? searchName) searchForUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isLoading)? getAllUsers,
    TResult? Function(String? searchName)? searchForUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isLoading)? getAllUsers,
    TResult Function(String? searchName)? searchForUser,
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
    required TResult Function(GetAllUsersEvent value) getAllUsers,
    required TResult Function(SearchForUserEvent value) searchForUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsersEvent value)? getAllUsers,
    TResult? Function(SearchForUserEvent value)? searchForUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsersEvent value)? getAllUsers,
    TResult Function(SearchForUserEvent value)? searchForUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UsersEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllUsersEventImplCopyWith<$Res> {
  factory _$$GetAllUsersEventImplCopyWith(_$GetAllUsersEventImpl value,
          $Res Function(_$GetAllUsersEventImpl) then) =
      __$$GetAllUsersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$GetAllUsersEventImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$GetAllUsersEventImpl>
    implements _$$GetAllUsersEventImplCopyWith<$Res> {
  __$$GetAllUsersEventImplCopyWithImpl(_$GetAllUsersEventImpl _value,
      $Res Function(_$GetAllUsersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$GetAllUsersEventImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetAllUsersEventImpl implements GetAllUsersEvent {
  const _$GetAllUsersEventImpl({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UsersEvent.getAllUsers(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllUsersEventImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllUsersEventImplCopyWith<_$GetAllUsersEventImpl> get copyWith =>
      __$$GetAllUsersEventImplCopyWithImpl<_$GetAllUsersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isLoading) getAllUsers,
    required TResult Function(String? searchName) searchForUser,
  }) {
    return getAllUsers(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isLoading)? getAllUsers,
    TResult? Function(String? searchName)? searchForUser,
  }) {
    return getAllUsers?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isLoading)? getAllUsers,
    TResult Function(String? searchName)? searchForUser,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllUsersEvent value) getAllUsers,
    required TResult Function(SearchForUserEvent value) searchForUser,
  }) {
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsersEvent value)? getAllUsers,
    TResult? Function(SearchForUserEvent value)? searchForUser,
  }) {
    return getAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsersEvent value)? getAllUsers,
    TResult Function(SearchForUserEvent value)? searchForUser,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers(this);
    }
    return orElse();
  }
}

abstract class GetAllUsersEvent implements UsersEvent {
  const factory GetAllUsersEvent({required final bool isLoading}) =
      _$GetAllUsersEventImpl;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$GetAllUsersEventImplCopyWith<_$GetAllUsersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchForUserEventImplCopyWith<$Res> {
  factory _$$SearchForUserEventImplCopyWith(_$SearchForUserEventImpl value,
          $Res Function(_$SearchForUserEventImpl) then) =
      __$$SearchForUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? searchName});
}

/// @nodoc
class __$$SearchForUserEventImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$SearchForUserEventImpl>
    implements _$$SearchForUserEventImplCopyWith<$Res> {
  __$$SearchForUserEventImplCopyWithImpl(_$SearchForUserEventImpl _value,
      $Res Function(_$SearchForUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchName = freezed,
  }) {
    return _then(_$SearchForUserEventImpl(
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchForUserEventImpl implements SearchForUserEvent {
  const _$SearchForUserEventImpl({required this.searchName});

  @override
  final String? searchName;

  @override
  String toString() {
    return 'UsersEvent.searchForUser(searchName: $searchName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchForUserEventImpl &&
            (identical(other.searchName, searchName) ||
                other.searchName == searchName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchForUserEventImplCopyWith<_$SearchForUserEventImpl> get copyWith =>
      __$$SearchForUserEventImplCopyWithImpl<_$SearchForUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isLoading) getAllUsers,
    required TResult Function(String? searchName) searchForUser,
  }) {
    return searchForUser(searchName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isLoading)? getAllUsers,
    TResult? Function(String? searchName)? searchForUser,
  }) {
    return searchForUser?.call(searchName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isLoading)? getAllUsers,
    TResult Function(String? searchName)? searchForUser,
    required TResult orElse(),
  }) {
    if (searchForUser != null) {
      return searchForUser(searchName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllUsersEvent value) getAllUsers,
    required TResult Function(SearchForUserEvent value) searchForUser,
  }) {
    return searchForUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllUsersEvent value)? getAllUsers,
    TResult? Function(SearchForUserEvent value)? searchForUser,
  }) {
    return searchForUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllUsersEvent value)? getAllUsers,
    TResult Function(SearchForUserEvent value)? searchForUser,
    required TResult orElse(),
  }) {
    if (searchForUser != null) {
      return searchForUser(this);
    }
    return orElse();
  }
}

abstract class SearchForUserEvent implements UsersEvent {
  const factory SearchForUserEvent({required final String? searchName}) =
      _$SearchForUserEventImpl;

  String? get searchName;
  @JsonKey(ignore: true)
  _$$SearchForUserEventImplCopyWith<_$SearchForUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<UserModel> list) success,
    required TResult Function(String error) error,
    required TResult Function(List<UserModel> userList) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<UserModel> list)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<UserModel> userList)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<UserModel> list)? success,
    TResult Function(String error)? error,
    TResult Function(List<UserModel> userList)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Empty value) empty,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(SearchUserState value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Empty value)? empty,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(SearchUserState value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Empty value)? empty,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UsersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<UserModel> list) success,
    required TResult Function(String error) error,
    required TResult Function(List<UserModel> userList) search,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<UserModel> list)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<UserModel> userList)? search,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<UserModel> list)? success,
    TResult Function(String error)? error,
    TResult Function(List<UserModel> userList)? search,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Empty value) empty,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(SearchUserState value) search,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Empty value)? empty,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(SearchUserState value)? search,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Empty value)? empty,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UsersState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyImpl implements Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'UsersState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<UserModel> list) success,
    required TResult Function(String error) error,
    required TResult Function(List<UserModel> userList) search,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<UserModel> list)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<UserModel> userList)? search,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<UserModel> list)? success,
    TResult Function(String error)? error,
    TResult Function(List<UserModel> userList)? search,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Empty value) empty,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(SearchUserState value) search,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Empty value)? empty,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(SearchUserState value)? search,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Empty value)? empty,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements UsersState {
  const factory Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel> list});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$SuccessImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required final List<UserModel> list}) : _list = list;

  final List<UserModel> _list;
  @override
  List<UserModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'UsersState.success(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<UserModel> list) success,
    required TResult Function(String error) error,
    required TResult Function(List<UserModel> userList) search,
  }) {
    return success(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<UserModel> list)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<UserModel> userList)? search,
  }) {
    return success?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<UserModel> list)? success,
    TResult Function(String error)? error,
    TResult Function(List<UserModel> userList)? search,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Empty value) empty,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(SearchUserState value) search,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Empty value)? empty,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(SearchUserState value)? search,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Empty value)? empty,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements UsersState {
  const factory Success({required final List<UserModel> list}) = _$SuccessImpl;

  List<UserModel> get list;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UsersState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<UserModel> list) success,
    required TResult Function(String error) error,
    required TResult Function(List<UserModel> userList) search,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<UserModel> list)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<UserModel> userList)? search,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<UserModel> list)? success,
    TResult Function(String error)? error,
    TResult Function(List<UserModel> userList)? search,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Empty value) empty,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(SearchUserState value) search,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Empty value)? empty,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(SearchUserState value)? search,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Empty value)? empty,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements UsersState {
  const factory Error({required final String error}) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchUserStateImplCopyWith<$Res> {
  factory _$$SearchUserStateImplCopyWith(_$SearchUserStateImpl value,
          $Res Function(_$SearchUserStateImpl) then) =
      __$$SearchUserStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel> userList});
}

/// @nodoc
class __$$SearchUserStateImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$SearchUserStateImpl>
    implements _$$SearchUserStateImplCopyWith<$Res> {
  __$$SearchUserStateImplCopyWithImpl(
      _$SearchUserStateImpl _value, $Res Function(_$SearchUserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = null,
  }) {
    return _then(_$SearchUserStateImpl(
      userList: null == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$SearchUserStateImpl implements SearchUserState {
  const _$SearchUserStateImpl({required final List<UserModel> userList})
      : _userList = userList;

  final List<UserModel> _userList;
  @override
  List<UserModel> get userList {
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  String toString() {
    return 'UsersState.search(userList: $userList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserStateImpl &&
            const DeepCollectionEquality().equals(other._userList, _userList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserStateImplCopyWith<_$SearchUserStateImpl> get copyWith =>
      __$$SearchUserStateImplCopyWithImpl<_$SearchUserStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<UserModel> list) success,
    required TResult Function(String error) error,
    required TResult Function(List<UserModel> userList) search,
  }) {
    return search(userList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<UserModel> list)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<UserModel> userList)? search,
  }) {
    return search?.call(userList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<UserModel> list)? success,
    TResult Function(String error)? error,
    TResult Function(List<UserModel> userList)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(userList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Empty value) empty,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(SearchUserState value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Empty value)? empty,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(SearchUserState value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Empty value)? empty,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchUserState implements UsersState {
  const factory SearchUserState({required final List<UserModel> userList}) =
      _$SearchUserStateImpl;

  List<UserModel> get userList;
  @JsonKey(ignore: true)
  _$$SearchUserStateImplCopyWith<_$SearchUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
