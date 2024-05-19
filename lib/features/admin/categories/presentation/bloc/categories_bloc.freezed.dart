// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String imageUrl) addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(EditCategoryRequestBody body) editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String imageUrl)? addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(EditCategoryRequestBody body)? editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String imageUrl)? addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(EditCategoryRequestBody body)? editCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddCategoryEvent value) addCategory,
    required TResult Function(DeleteCategoryEvent value) deleteCategory,
    required TResult Function(EditCategory value) editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddCategoryEvent value)? addCategory,
    TResult? Function(DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(EditCategory value)? editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddCategoryEvent value)? addCategory,
    TResult Function(DeleteCategoryEvent value)? deleteCategory,
    TResult Function(EditCategory value)? editCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

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
    extends _$CategoriesEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CategoriesEvent.started()';
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
    required TResult Function() getCategories,
    required TResult Function(String imageUrl) addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(EditCategoryRequestBody body) editCategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String imageUrl)? addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(EditCategoryRequestBody body)? editCategory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String imageUrl)? addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(EditCategoryRequestBody body)? editCategory,
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
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddCategoryEvent value) addCategory,
    required TResult Function(DeleteCategoryEvent value) deleteCategory,
    required TResult Function(EditCategory value) editCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddCategoryEvent value)? addCategory,
    TResult? Function(DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(EditCategory value)? editCategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddCategoryEvent value)? addCategory,
    TResult Function(DeleteCategoryEvent value)? deleteCategory,
    TResult Function(EditCategory value)? editCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoriesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetCategoriesEventImplCopyWith<$Res> {
  factory _$$GetCategoriesEventImplCopyWith(_$GetCategoriesEventImpl value,
          $Res Function(_$GetCategoriesEventImpl) then) =
      __$$GetCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$GetCategoriesEventImpl>
    implements _$$GetCategoriesEventImplCopyWith<$Res> {
  __$$GetCategoriesEventImplCopyWithImpl(_$GetCategoriesEventImpl _value,
      $Res Function(_$GetCategoriesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoriesEventImpl implements GetCategoriesEvent {
  const _$GetCategoriesEventImpl();

  @override
  String toString() {
    return 'CategoriesEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String imageUrl) addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(EditCategoryRequestBody body) editCategory,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String imageUrl)? addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(EditCategoryRequestBody body)? editCategory,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String imageUrl)? addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(EditCategoryRequestBody body)? editCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddCategoryEvent value) addCategory,
    required TResult Function(DeleteCategoryEvent value) deleteCategory,
    required TResult Function(EditCategory value) editCategory,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddCategoryEvent value)? addCategory,
    TResult? Function(DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(EditCategory value)? editCategory,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddCategoryEvent value)? addCategory,
    TResult Function(DeleteCategoryEvent value)? deleteCategory,
    TResult Function(EditCategory value)? editCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesEvent implements CategoriesEvent {
  const factory GetCategoriesEvent() = _$GetCategoriesEventImpl;
}

/// @nodoc
abstract class _$$AddCategoryEventImplCopyWith<$Res> {
  factory _$$AddCategoryEventImplCopyWith(_$AddCategoryEventImpl value,
          $Res Function(_$AddCategoryEventImpl) then) =
      __$$AddCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$AddCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$AddCategoryEventImpl>
    implements _$$AddCategoryEventImplCopyWith<$Res> {
  __$$AddCategoryEventImplCopyWithImpl(_$AddCategoryEventImpl _value,
      $Res Function(_$AddCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$AddCategoryEventImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCategoryEventImpl implements AddCategoryEvent {
  const _$AddCategoryEventImpl({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'CategoriesEvent.addCategory(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryEventImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryEventImplCopyWith<_$AddCategoryEventImpl> get copyWith =>
      __$$AddCategoryEventImplCopyWithImpl<_$AddCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String imageUrl) addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(EditCategoryRequestBody body) editCategory,
  }) {
    return addCategory(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String imageUrl)? addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(EditCategoryRequestBody body)? editCategory,
  }) {
    return addCategory?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String imageUrl)? addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(EditCategoryRequestBody body)? editCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddCategoryEvent value) addCategory,
    required TResult Function(DeleteCategoryEvent value) deleteCategory,
    required TResult Function(EditCategory value) editCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddCategoryEvent value)? addCategory,
    TResult? Function(DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(EditCategory value)? editCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddCategoryEvent value)? addCategory,
    TResult Function(DeleteCategoryEvent value)? deleteCategory,
    TResult Function(EditCategory value)? editCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class AddCategoryEvent implements CategoriesEvent {
  const factory AddCategoryEvent({required final String imageUrl}) =
      _$AddCategoryEventImpl;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$$AddCategoryEventImplCopyWith<_$AddCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCategoryEventImplCopyWith<$Res> {
  factory _$$DeleteCategoryEventImplCopyWith(_$DeleteCategoryEventImpl value,
          $Res Function(_$DeleteCategoryEventImpl) then) =
      __$$DeleteCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$DeleteCategoryEventImpl>
    implements _$$DeleteCategoryEventImplCopyWith<$Res> {
  __$$DeleteCategoryEventImplCopyWithImpl(_$DeleteCategoryEventImpl _value,
      $Res Function(_$DeleteCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCategoryEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryEventImpl implements DeleteCategoryEvent {
  const _$DeleteCategoryEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CategoriesEvent.deleteCategory(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryEventImplCopyWith<_$DeleteCategoryEventImpl> get copyWith =>
      __$$DeleteCategoryEventImplCopyWithImpl<_$DeleteCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String imageUrl) addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(EditCategoryRequestBody body) editCategory,
  }) {
    return deleteCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String imageUrl)? addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(EditCategoryRequestBody body)? editCategory,
  }) {
    return deleteCategory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String imageUrl)? addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(EditCategoryRequestBody body)? editCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddCategoryEvent value) addCategory,
    required TResult Function(DeleteCategoryEvent value) deleteCategory,
    required TResult Function(EditCategory value) editCategory,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddCategoryEvent value)? addCategory,
    TResult? Function(DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(EditCategory value)? editCategory,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddCategoryEvent value)? addCategory,
    TResult Function(DeleteCategoryEvent value)? deleteCategory,
    TResult Function(EditCategory value)? editCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class DeleteCategoryEvent implements CategoriesEvent {
  const factory DeleteCategoryEvent({required final String id}) =
      _$DeleteCategoryEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteCategoryEventImplCopyWith<_$DeleteCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditCategoryImplCopyWith<$Res> {
  factory _$$EditCategoryImplCopyWith(
          _$EditCategoryImpl value, $Res Function(_$EditCategoryImpl) then) =
      __$$EditCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditCategoryRequestBody body});
}

/// @nodoc
class __$$EditCategoryImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$EditCategoryImpl>
    implements _$$EditCategoryImplCopyWith<$Res> {
  __$$EditCategoryImplCopyWithImpl(
      _$EditCategoryImpl _value, $Res Function(_$EditCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$EditCategoryImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as EditCategoryRequestBody,
    ));
  }
}

/// @nodoc

class _$EditCategoryImpl implements EditCategory {
  const _$EditCategoryImpl({required this.body});

  @override
  final EditCategoryRequestBody body;

  @override
  String toString() {
    return 'CategoriesEvent.editCategory(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCategoryImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCategoryImplCopyWith<_$EditCategoryImpl> get copyWith =>
      __$$EditCategoryImplCopyWithImpl<_$EditCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String imageUrl) addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(EditCategoryRequestBody body) editCategory,
  }) {
    return editCategory(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String imageUrl)? addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(EditCategoryRequestBody body)? editCategory,
  }) {
    return editCategory?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String imageUrl)? addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(EditCategoryRequestBody body)? editCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddCategoryEvent value) addCategory,
    required TResult Function(DeleteCategoryEvent value) deleteCategory,
    required TResult Function(EditCategory value) editCategory,
  }) {
    return editCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddCategoryEvent value)? addCategory,
    TResult? Function(DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(EditCategory value)? editCategory,
  }) {
    return editCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddCategoryEvent value)? addCategory,
    TResult Function(DeleteCategoryEvent value)? deleteCategory,
    TResult Function(EditCategory value)? editCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(this);
    }
    return orElse();
  }
}

abstract class EditCategory implements CategoriesEvent {
  const factory EditCategory({required final EditCategoryRequestBody body}) =
      _$EditCategoryImpl;

  EditCategoryRequestBody get body;
  @JsonKey(ignore: true)
  _$$EditCategoryImplCopyWith<_$EditCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdminCategoriesResponse data) success,
    required TResult Function(String error) error,
    required TResult Function(AddCategoryResponse data) addedSuccess,
    required TResult Function(String error) addedError,
    required TResult Function(DeleteCategoryResponse data) deletedSuccess,
    required TResult Function(String error) deletedError,
    required TResult Function() editSuccess,
    required TResult Function(String error) editError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoriesResponse data)? success,
    TResult? Function(String error)? error,
    TResult? Function(AddCategoryResponse data)? addedSuccess,
    TResult? Function(String error)? addedError,
    TResult? Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult? Function(String error)? deletedError,
    TResult? Function()? editSuccess,
    TResult? Function(String error)? editError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoriesResponse data)? success,
    TResult Function(String error)? error,
    TResult Function(AddCategoryResponse data)? addedSuccess,
    TResult Function(String error)? addedError,
    TResult Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult Function(String error)? deletedError,
    TResult Function()? editSuccess,
    TResult Function(String error)? editError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedError value) addedError,
    required TResult Function(DeletedSuccess value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
    required TResult Function(EditSuccess value) editSuccess,
    required TResult Function(EditError value) editError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(AddedSuccess value)? addedSuccess,
    TResult? Function(AddedError value)? addedError,
    TResult? Function(DeletedSuccess value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
    TResult? Function(EditSuccess value)? editSuccess,
    TResult? Function(EditError value)? editError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedError value)? addedError,
    TResult Function(DeletedSuccess value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    TResult Function(EditSuccess value)? editSuccess,
    TResult Function(EditError value)? editError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoriesStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'CategoriesState.loading()';
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
    required TResult Function(AdminCategoriesResponse data) success,
    required TResult Function(String error) error,
    required TResult Function(AddCategoryResponse data) addedSuccess,
    required TResult Function(String error) addedError,
    required TResult Function(DeleteCategoryResponse data) deletedSuccess,
    required TResult Function(String error) deletedError,
    required TResult Function() editSuccess,
    required TResult Function(String error) editError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoriesResponse data)? success,
    TResult? Function(String error)? error,
    TResult? Function(AddCategoryResponse data)? addedSuccess,
    TResult? Function(String error)? addedError,
    TResult? Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult? Function(String error)? deletedError,
    TResult? Function()? editSuccess,
    TResult? Function(String error)? editError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoriesResponse data)? success,
    TResult Function(String error)? error,
    TResult Function(AddCategoryResponse data)? addedSuccess,
    TResult Function(String error)? addedError,
    TResult Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult Function(String error)? deletedError,
    TResult Function()? editSuccess,
    TResult Function(String error)? editError,
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
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedError value) addedError,
    required TResult Function(DeletedSuccess value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
    required TResult Function(EditSuccess value) editSuccess,
    required TResult Function(EditError value) editError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(AddedSuccess value)? addedSuccess,
    TResult? Function(AddedError value)? addedError,
    TResult? Function(DeletedSuccess value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
    TResult? Function(EditSuccess value)? editSuccess,
    TResult? Function(EditError value)? editError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedError value)? addedError,
    TResult Function(DeletedSuccess value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    TResult Function(EditSuccess value)? editSuccess,
    TResult Function(EditError value)? editError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CategoriesState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AdminCategoriesResponse data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AdminCategoriesResponse,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required this.data});

  @override
  final AdminCategoriesResponse data;

  @override
  String toString() {
    return 'CategoriesState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdminCategoriesResponse data) success,
    required TResult Function(String error) error,
    required TResult Function(AddCategoryResponse data) addedSuccess,
    required TResult Function(String error) addedError,
    required TResult Function(DeleteCategoryResponse data) deletedSuccess,
    required TResult Function(String error) deletedError,
    required TResult Function() editSuccess,
    required TResult Function(String error) editError,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoriesResponse data)? success,
    TResult? Function(String error)? error,
    TResult? Function(AddCategoryResponse data)? addedSuccess,
    TResult? Function(String error)? addedError,
    TResult? Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult? Function(String error)? deletedError,
    TResult? Function()? editSuccess,
    TResult? Function(String error)? editError,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoriesResponse data)? success,
    TResult Function(String error)? error,
    TResult Function(AddCategoryResponse data)? addedSuccess,
    TResult Function(String error)? addedError,
    TResult Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult Function(String error)? deletedError,
    TResult Function()? editSuccess,
    TResult Function(String error)? editError,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedError value) addedError,
    required TResult Function(DeletedSuccess value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
    required TResult Function(EditSuccess value) editSuccess,
    required TResult Function(EditError value) editError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(AddedSuccess value)? addedSuccess,
    TResult? Function(AddedError value)? addedError,
    TResult? Function(DeletedSuccess value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
    TResult? Function(EditSuccess value)? editSuccess,
    TResult? Function(EditError value)? editError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedError value)? addedError,
    TResult Function(DeletedSuccess value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    TResult Function(EditSuccess value)? editSuccess,
    TResult Function(EditError value)? editError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements CategoriesState {
  const factory Success({required final AdminCategoriesResponse data}) =
      _$SuccessImpl;

  AdminCategoriesResponse get data;
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
    extends _$CategoriesStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'CategoriesState.error(error: $error)';
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
    required TResult Function(AdminCategoriesResponse data) success,
    required TResult Function(String error) error,
    required TResult Function(AddCategoryResponse data) addedSuccess,
    required TResult Function(String error) addedError,
    required TResult Function(DeleteCategoryResponse data) deletedSuccess,
    required TResult Function(String error) deletedError,
    required TResult Function() editSuccess,
    required TResult Function(String error) editError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoriesResponse data)? success,
    TResult? Function(String error)? error,
    TResult? Function(AddCategoryResponse data)? addedSuccess,
    TResult? Function(String error)? addedError,
    TResult? Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult? Function(String error)? deletedError,
    TResult? Function()? editSuccess,
    TResult? Function(String error)? editError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoriesResponse data)? success,
    TResult Function(String error)? error,
    TResult Function(AddCategoryResponse data)? addedSuccess,
    TResult Function(String error)? addedError,
    TResult Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult Function(String error)? deletedError,
    TResult Function()? editSuccess,
    TResult Function(String error)? editError,
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
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedError value) addedError,
    required TResult Function(DeletedSuccess value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
    required TResult Function(EditSuccess value) editSuccess,
    required TResult Function(EditError value) editError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(AddedSuccess value)? addedSuccess,
    TResult? Function(AddedError value)? addedError,
    TResult? Function(DeletedSuccess value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
    TResult? Function(EditSuccess value)? editSuccess,
    TResult? Function(EditError value)? editError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedError value)? addedError,
    TResult Function(DeletedSuccess value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    TResult Function(EditSuccess value)? editSuccess,
    TResult Function(EditError value)? editError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements CategoriesState {
  const factory Error({required final String error}) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddedSuccessImplCopyWith<$Res> {
  factory _$$AddedSuccessImplCopyWith(
          _$AddedSuccessImpl value, $Res Function(_$AddedSuccessImpl) then) =
      __$$AddedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddCategoryResponse data});
}

/// @nodoc
class __$$AddedSuccessImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$AddedSuccessImpl>
    implements _$$AddedSuccessImplCopyWith<$Res> {
  __$$AddedSuccessImplCopyWithImpl(
      _$AddedSuccessImpl _value, $Res Function(_$AddedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AddedSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddCategoryResponse,
    ));
  }
}

/// @nodoc

class _$AddedSuccessImpl implements AddedSuccess {
  const _$AddedSuccessImpl(this.data);

  @override
  final AddCategoryResponse data;

  @override
  String toString() {
    return 'CategoriesState.addedSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedSuccessImplCopyWith<_$AddedSuccessImpl> get copyWith =>
      __$$AddedSuccessImplCopyWithImpl<_$AddedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdminCategoriesResponse data) success,
    required TResult Function(String error) error,
    required TResult Function(AddCategoryResponse data) addedSuccess,
    required TResult Function(String error) addedError,
    required TResult Function(DeleteCategoryResponse data) deletedSuccess,
    required TResult Function(String error) deletedError,
    required TResult Function() editSuccess,
    required TResult Function(String error) editError,
  }) {
    return addedSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoriesResponse data)? success,
    TResult? Function(String error)? error,
    TResult? Function(AddCategoryResponse data)? addedSuccess,
    TResult? Function(String error)? addedError,
    TResult? Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult? Function(String error)? deletedError,
    TResult? Function()? editSuccess,
    TResult? Function(String error)? editError,
  }) {
    return addedSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoriesResponse data)? success,
    TResult Function(String error)? error,
    TResult Function(AddCategoryResponse data)? addedSuccess,
    TResult Function(String error)? addedError,
    TResult Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult Function(String error)? deletedError,
    TResult Function()? editSuccess,
    TResult Function(String error)? editError,
    required TResult orElse(),
  }) {
    if (addedSuccess != null) {
      return addedSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedError value) addedError,
    required TResult Function(DeletedSuccess value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
    required TResult Function(EditSuccess value) editSuccess,
    required TResult Function(EditError value) editError,
  }) {
    return addedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(AddedSuccess value)? addedSuccess,
    TResult? Function(AddedError value)? addedError,
    TResult? Function(DeletedSuccess value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
    TResult? Function(EditSuccess value)? editSuccess,
    TResult? Function(EditError value)? editError,
  }) {
    return addedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedError value)? addedError,
    TResult Function(DeletedSuccess value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    TResult Function(EditSuccess value)? editSuccess,
    TResult Function(EditError value)? editError,
    required TResult orElse(),
  }) {
    if (addedSuccess != null) {
      return addedSuccess(this);
    }
    return orElse();
  }
}

abstract class AddedSuccess implements CategoriesState {
  const factory AddedSuccess(final AddCategoryResponse data) =
      _$AddedSuccessImpl;

  AddCategoryResponse get data;
  @JsonKey(ignore: true)
  _$$AddedSuccessImplCopyWith<_$AddedSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddedErrorImplCopyWith<$Res> {
  factory _$$AddedErrorImplCopyWith(
          _$AddedErrorImpl value, $Res Function(_$AddedErrorImpl) then) =
      __$$AddedErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddedErrorImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$AddedErrorImpl>
    implements _$$AddedErrorImplCopyWith<$Res> {
  __$$AddedErrorImplCopyWithImpl(
      _$AddedErrorImpl _value, $Res Function(_$AddedErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddedErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddedErrorImpl implements AddedError {
  const _$AddedErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CategoriesState.addedError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedErrorImplCopyWith<_$AddedErrorImpl> get copyWith =>
      __$$AddedErrorImplCopyWithImpl<_$AddedErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdminCategoriesResponse data) success,
    required TResult Function(String error) error,
    required TResult Function(AddCategoryResponse data) addedSuccess,
    required TResult Function(String error) addedError,
    required TResult Function(DeleteCategoryResponse data) deletedSuccess,
    required TResult Function(String error) deletedError,
    required TResult Function() editSuccess,
    required TResult Function(String error) editError,
  }) {
    return addedError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoriesResponse data)? success,
    TResult? Function(String error)? error,
    TResult? Function(AddCategoryResponse data)? addedSuccess,
    TResult? Function(String error)? addedError,
    TResult? Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult? Function(String error)? deletedError,
    TResult? Function()? editSuccess,
    TResult? Function(String error)? editError,
  }) {
    return addedError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoriesResponse data)? success,
    TResult Function(String error)? error,
    TResult Function(AddCategoryResponse data)? addedSuccess,
    TResult Function(String error)? addedError,
    TResult Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult Function(String error)? deletedError,
    TResult Function()? editSuccess,
    TResult Function(String error)? editError,
    required TResult orElse(),
  }) {
    if (addedError != null) {
      return addedError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedError value) addedError,
    required TResult Function(DeletedSuccess value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
    required TResult Function(EditSuccess value) editSuccess,
    required TResult Function(EditError value) editError,
  }) {
    return addedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(AddedSuccess value)? addedSuccess,
    TResult? Function(AddedError value)? addedError,
    TResult? Function(DeletedSuccess value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
    TResult? Function(EditSuccess value)? editSuccess,
    TResult? Function(EditError value)? editError,
  }) {
    return addedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedError value)? addedError,
    TResult Function(DeletedSuccess value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    TResult Function(EditSuccess value)? editSuccess,
    TResult Function(EditError value)? editError,
    required TResult orElse(),
  }) {
    if (addedError != null) {
      return addedError(this);
    }
    return orElse();
  }
}

abstract class AddedError implements CategoriesState {
  const factory AddedError({required final String error}) = _$AddedErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$AddedErrorImplCopyWith<_$AddedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedSuccessImplCopyWith<$Res> {
  factory _$$DeletedSuccessImplCopyWith(_$DeletedSuccessImpl value,
          $Res Function(_$DeletedSuccessImpl) then) =
      __$$DeletedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteCategoryResponse data});
}

/// @nodoc
class __$$DeletedSuccessImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$DeletedSuccessImpl>
    implements _$$DeletedSuccessImplCopyWith<$Res> {
  __$$DeletedSuccessImplCopyWithImpl(
      _$DeletedSuccessImpl _value, $Res Function(_$DeletedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DeletedSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeleteCategoryResponse,
    ));
  }
}

/// @nodoc

class _$DeletedSuccessImpl implements DeletedSuccess {
  const _$DeletedSuccessImpl(this.data);

  @override
  final DeleteCategoryResponse data;

  @override
  String toString() {
    return 'CategoriesState.deletedSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedSuccessImplCopyWith<_$DeletedSuccessImpl> get copyWith =>
      __$$DeletedSuccessImplCopyWithImpl<_$DeletedSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdminCategoriesResponse data) success,
    required TResult Function(String error) error,
    required TResult Function(AddCategoryResponse data) addedSuccess,
    required TResult Function(String error) addedError,
    required TResult Function(DeleteCategoryResponse data) deletedSuccess,
    required TResult Function(String error) deletedError,
    required TResult Function() editSuccess,
    required TResult Function(String error) editError,
  }) {
    return deletedSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoriesResponse data)? success,
    TResult? Function(String error)? error,
    TResult? Function(AddCategoryResponse data)? addedSuccess,
    TResult? Function(String error)? addedError,
    TResult? Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult? Function(String error)? deletedError,
    TResult? Function()? editSuccess,
    TResult? Function(String error)? editError,
  }) {
    return deletedSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoriesResponse data)? success,
    TResult Function(String error)? error,
    TResult Function(AddCategoryResponse data)? addedSuccess,
    TResult Function(String error)? addedError,
    TResult Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult Function(String error)? deletedError,
    TResult Function()? editSuccess,
    TResult Function(String error)? editError,
    required TResult orElse(),
  }) {
    if (deletedSuccess != null) {
      return deletedSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedError value) addedError,
    required TResult Function(DeletedSuccess value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
    required TResult Function(EditSuccess value) editSuccess,
    required TResult Function(EditError value) editError,
  }) {
    return deletedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(AddedSuccess value)? addedSuccess,
    TResult? Function(AddedError value)? addedError,
    TResult? Function(DeletedSuccess value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
    TResult? Function(EditSuccess value)? editSuccess,
    TResult? Function(EditError value)? editError,
  }) {
    return deletedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedError value)? addedError,
    TResult Function(DeletedSuccess value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    TResult Function(EditSuccess value)? editSuccess,
    TResult Function(EditError value)? editError,
    required TResult orElse(),
  }) {
    if (deletedSuccess != null) {
      return deletedSuccess(this);
    }
    return orElse();
  }
}

abstract class DeletedSuccess implements CategoriesState {
  const factory DeletedSuccess(final DeleteCategoryResponse data) =
      _$DeletedSuccessImpl;

  DeleteCategoryResponse get data;
  @JsonKey(ignore: true)
  _$$DeletedSuccessImplCopyWith<_$DeletedSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$CategoriesStateCopyWithImpl<$Res, _$DeletedErrorImpl>
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
    return 'CategoriesState.deletedError(error: $error)';
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
    required TResult Function() loading,
    required TResult Function(AdminCategoriesResponse data) success,
    required TResult Function(String error) error,
    required TResult Function(AddCategoryResponse data) addedSuccess,
    required TResult Function(String error) addedError,
    required TResult Function(DeleteCategoryResponse data) deletedSuccess,
    required TResult Function(String error) deletedError,
    required TResult Function() editSuccess,
    required TResult Function(String error) editError,
  }) {
    return deletedError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoriesResponse data)? success,
    TResult? Function(String error)? error,
    TResult? Function(AddCategoryResponse data)? addedSuccess,
    TResult? Function(String error)? addedError,
    TResult? Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult? Function(String error)? deletedError,
    TResult? Function()? editSuccess,
    TResult? Function(String error)? editError,
  }) {
    return deletedError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoriesResponse data)? success,
    TResult Function(String error)? error,
    TResult Function(AddCategoryResponse data)? addedSuccess,
    TResult Function(String error)? addedError,
    TResult Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult Function(String error)? deletedError,
    TResult Function()? editSuccess,
    TResult Function(String error)? editError,
    required TResult orElse(),
  }) {
    if (deletedError != null) {
      return deletedError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedError value) addedError,
    required TResult Function(DeletedSuccess value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
    required TResult Function(EditSuccess value) editSuccess,
    required TResult Function(EditError value) editError,
  }) {
    return deletedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(AddedSuccess value)? addedSuccess,
    TResult? Function(AddedError value)? addedError,
    TResult? Function(DeletedSuccess value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
    TResult? Function(EditSuccess value)? editSuccess,
    TResult? Function(EditError value)? editError,
  }) {
    return deletedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedError value)? addedError,
    TResult Function(DeletedSuccess value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    TResult Function(EditSuccess value)? editSuccess,
    TResult Function(EditError value)? editError,
    required TResult orElse(),
  }) {
    if (deletedError != null) {
      return deletedError(this);
    }
    return orElse();
  }
}

abstract class DeletedError implements CategoriesState {
  const factory DeletedError({required final String error}) =
      _$DeletedErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$DeletedErrorImplCopyWith<_$DeletedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditSuccessImplCopyWith<$Res> {
  factory _$$EditSuccessImplCopyWith(
          _$EditSuccessImpl value, $Res Function(_$EditSuccessImpl) then) =
      __$$EditSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditSuccessImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$EditSuccessImpl>
    implements _$$EditSuccessImplCopyWith<$Res> {
  __$$EditSuccessImplCopyWithImpl(
      _$EditSuccessImpl _value, $Res Function(_$EditSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditSuccessImpl implements EditSuccess {
  const _$EditSuccessImpl();

  @override
  String toString() {
    return 'CategoriesState.editSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdminCategoriesResponse data) success,
    required TResult Function(String error) error,
    required TResult Function(AddCategoryResponse data) addedSuccess,
    required TResult Function(String error) addedError,
    required TResult Function(DeleteCategoryResponse data) deletedSuccess,
    required TResult Function(String error) deletedError,
    required TResult Function() editSuccess,
    required TResult Function(String error) editError,
  }) {
    return editSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoriesResponse data)? success,
    TResult? Function(String error)? error,
    TResult? Function(AddCategoryResponse data)? addedSuccess,
    TResult? Function(String error)? addedError,
    TResult? Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult? Function(String error)? deletedError,
    TResult? Function()? editSuccess,
    TResult? Function(String error)? editError,
  }) {
    return editSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoriesResponse data)? success,
    TResult Function(String error)? error,
    TResult Function(AddCategoryResponse data)? addedSuccess,
    TResult Function(String error)? addedError,
    TResult Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult Function(String error)? deletedError,
    TResult Function()? editSuccess,
    TResult Function(String error)? editError,
    required TResult orElse(),
  }) {
    if (editSuccess != null) {
      return editSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedError value) addedError,
    required TResult Function(DeletedSuccess value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
    required TResult Function(EditSuccess value) editSuccess,
    required TResult Function(EditError value) editError,
  }) {
    return editSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(AddedSuccess value)? addedSuccess,
    TResult? Function(AddedError value)? addedError,
    TResult? Function(DeletedSuccess value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
    TResult? Function(EditSuccess value)? editSuccess,
    TResult? Function(EditError value)? editError,
  }) {
    return editSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedError value)? addedError,
    TResult Function(DeletedSuccess value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    TResult Function(EditSuccess value)? editSuccess,
    TResult Function(EditError value)? editError,
    required TResult orElse(),
  }) {
    if (editSuccess != null) {
      return editSuccess(this);
    }
    return orElse();
  }
}

abstract class EditSuccess implements CategoriesState {
  const factory EditSuccess() = _$EditSuccessImpl;
}

/// @nodoc
abstract class _$$EditErrorImplCopyWith<$Res> {
  factory _$$EditErrorImplCopyWith(
          _$EditErrorImpl value, $Res Function(_$EditErrorImpl) then) =
      __$$EditErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$EditErrorImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$EditErrorImpl>
    implements _$$EditErrorImplCopyWith<$Res> {
  __$$EditErrorImplCopyWithImpl(
      _$EditErrorImpl _value, $Res Function(_$EditErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EditErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditErrorImpl implements EditError {
  const _$EditErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CategoriesState.editError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditErrorImplCopyWith<_$EditErrorImpl> get copyWith =>
      __$$EditErrorImplCopyWithImpl<_$EditErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdminCategoriesResponse data) success,
    required TResult Function(String error) error,
    required TResult Function(AddCategoryResponse data) addedSuccess,
    required TResult Function(String error) addedError,
    required TResult Function(DeleteCategoryResponse data) deletedSuccess,
    required TResult Function(String error) deletedError,
    required TResult Function() editSuccess,
    required TResult Function(String error) editError,
  }) {
    return editError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoriesResponse data)? success,
    TResult? Function(String error)? error,
    TResult? Function(AddCategoryResponse data)? addedSuccess,
    TResult? Function(String error)? addedError,
    TResult? Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult? Function(String error)? deletedError,
    TResult? Function()? editSuccess,
    TResult? Function(String error)? editError,
  }) {
    return editError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoriesResponse data)? success,
    TResult Function(String error)? error,
    TResult Function(AddCategoryResponse data)? addedSuccess,
    TResult Function(String error)? addedError,
    TResult Function(DeleteCategoryResponse data)? deletedSuccess,
    TResult Function(String error)? deletedError,
    TResult Function()? editSuccess,
    TResult Function(String error)? editError,
    required TResult orElse(),
  }) {
    if (editError != null) {
      return editError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedError value) addedError,
    required TResult Function(DeletedSuccess value) deletedSuccess,
    required TResult Function(DeletedError value) deletedError,
    required TResult Function(EditSuccess value) editSuccess,
    required TResult Function(EditError value) editError,
  }) {
    return editError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(AddedSuccess value)? addedSuccess,
    TResult? Function(AddedError value)? addedError,
    TResult? Function(DeletedSuccess value)? deletedSuccess,
    TResult? Function(DeletedError value)? deletedError,
    TResult? Function(EditSuccess value)? editSuccess,
    TResult? Function(EditError value)? editError,
  }) {
    return editError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedError value)? addedError,
    TResult Function(DeletedSuccess value)? deletedSuccess,
    TResult Function(DeletedError value)? deletedError,
    TResult Function(EditSuccess value)? editSuccess,
    TResult Function(EditError value)? editError,
    required TResult orElse(),
  }) {
    if (editError != null) {
      return editError(this);
    }
    return orElse();
  }
}

abstract class EditError implements CategoriesState {
  const factory EditError({required final String error}) = _$EditErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$EditErrorImplCopyWith<_$EditErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
