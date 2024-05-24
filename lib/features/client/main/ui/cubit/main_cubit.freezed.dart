// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NavBarEnum navBarEnum) barSelectedIcons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NavBarEnum navBarEnum)? barSelectedIcons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NavBarEnum navBarEnum)? barSelectedIcons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BarSeletedIcons value) barSelectedIcons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BarSeletedIcons value)? barSelectedIcons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BarSeletedIcons value)? barSelectedIcons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

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
    extends _$MainStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MainState.initial()';
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
    required TResult Function(NavBarEnum navBarEnum) barSelectedIcons,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NavBarEnum navBarEnum)? barSelectedIcons,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NavBarEnum navBarEnum)? barSelectedIcons,
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
    required TResult Function(BarSeletedIcons value) barSelectedIcons,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BarSeletedIcons value)? barSelectedIcons,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BarSeletedIcons value)? barSelectedIcons,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BarSeletedIconsImplCopyWith<$Res> {
  factory _$$BarSeletedIconsImplCopyWith(_$BarSeletedIconsImpl value,
          $Res Function(_$BarSeletedIconsImpl) then) =
      __$$BarSeletedIconsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NavBarEnum navBarEnum});
}

/// @nodoc
class __$$BarSeletedIconsImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$BarSeletedIconsImpl>
    implements _$$BarSeletedIconsImplCopyWith<$Res> {
  __$$BarSeletedIconsImplCopyWithImpl(
      _$BarSeletedIconsImpl _value, $Res Function(_$BarSeletedIconsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navBarEnum = null,
  }) {
    return _then(_$BarSeletedIconsImpl(
      navBarEnum: null == navBarEnum
          ? _value.navBarEnum
          : navBarEnum // ignore: cast_nullable_to_non_nullable
              as NavBarEnum,
    ));
  }
}

/// @nodoc

class _$BarSeletedIconsImpl implements BarSeletedIcons {
  const _$BarSeletedIconsImpl({required this.navBarEnum});

  @override
  final NavBarEnum navBarEnum;

  @override
  String toString() {
    return 'MainState.barSelectedIcons(navBarEnum: $navBarEnum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarSeletedIconsImpl &&
            (identical(other.navBarEnum, navBarEnum) ||
                other.navBarEnum == navBarEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navBarEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarSeletedIconsImplCopyWith<_$BarSeletedIconsImpl> get copyWith =>
      __$$BarSeletedIconsImplCopyWithImpl<_$BarSeletedIconsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NavBarEnum navBarEnum) barSelectedIcons,
  }) {
    return barSelectedIcons(navBarEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NavBarEnum navBarEnum)? barSelectedIcons,
  }) {
    return barSelectedIcons?.call(navBarEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NavBarEnum navBarEnum)? barSelectedIcons,
    required TResult orElse(),
  }) {
    if (barSelectedIcons != null) {
      return barSelectedIcons(navBarEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BarSeletedIcons value) barSelectedIcons,
  }) {
    return barSelectedIcons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BarSeletedIcons value)? barSelectedIcons,
  }) {
    return barSelectedIcons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BarSeletedIcons value)? barSelectedIcons,
    required TResult orElse(),
  }) {
    if (barSelectedIcons != null) {
      return barSelectedIcons(this);
    }
    return orElse();
  }
}

abstract class BarSeletedIcons implements MainState {
  const factory BarSeletedIcons({required final NavBarEnum navBarEnum}) =
      _$BarSeletedIconsImpl;

  NavBarEnum get navBarEnum;
  @JsonKey(ignore: true)
  _$$BarSeletedIconsImplCopyWith<_$BarSeletedIconsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
