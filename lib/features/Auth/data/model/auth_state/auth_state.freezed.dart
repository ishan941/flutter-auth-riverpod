// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  String? get gender => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe) $default, {
    required TResult Function(String? gender, bool rememberMe) idle,
    required TResult Function(String? gender, bool rememberMe) loading,
    required TResult Function(UserModel user, String? gender, bool rememberMe)
        authenticated,
    required TResult Function(String? gender, bool rememberMe) unauthenticated,
    required TResult Function(String message, String? gender, bool rememberMe)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? gender, bool rememberMe)? $default, {
    TResult? Function(String? gender, bool rememberMe)? idle,
    TResult? Function(String? gender, bool rememberMe)? loading,
    TResult? Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult? Function(String? gender, bool rememberMe)? unauthenticated,
    TResult? Function(String message, String? gender, bool rememberMe)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe)? $default, {
    TResult Function(String? gender, bool rememberMe)? idle,
    TResult Function(String? gender, bool rememberMe)? loading,
    TResult Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult Function(String? gender, bool rememberMe)? unauthenticated,
    TResult Function(String message, String? gender, bool rememberMe)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthState value)? $default, {
    TResult? Function(Idle value)? idle,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({String? gender, bool rememberMe});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? rememberMe = null,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? gender, bool rememberMe});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? rememberMe = null,
  }) {
    return _then(_$AuthStateImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl({this.gender, this.rememberMe = false});

  @override
  final String? gender;
  @override
  @JsonKey()
  final bool rememberMe;

  @override
  String toString() {
    return 'AuthState(gender: $gender, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender, rememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe) $default, {
    required TResult Function(String? gender, bool rememberMe) idle,
    required TResult Function(String? gender, bool rememberMe) loading,
    required TResult Function(UserModel user, String? gender, bool rememberMe)
        authenticated,
    required TResult Function(String? gender, bool rememberMe) unauthenticated,
    required TResult Function(String message, String? gender, bool rememberMe)
        error,
  }) {
    return $default(gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? gender, bool rememberMe)? $default, {
    TResult? Function(String? gender, bool rememberMe)? idle,
    TResult? Function(String? gender, bool rememberMe)? loading,
    TResult? Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult? Function(String? gender, bool rememberMe)? unauthenticated,
    TResult? Function(String message, String? gender, bool rememberMe)? error,
  }) {
    return $default?.call(gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe)? $default, {
    TResult Function(String? gender, bool rememberMe)? idle,
    TResult Function(String? gender, bool rememberMe)? loading,
    TResult Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult Function(String? gender, bool rememberMe)? unauthenticated,
    TResult Function(String message, String? gender, bool rememberMe)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(gender, rememberMe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthState value)? $default, {
    TResult? Function(Idle value)? idle,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({final String? gender, final bool rememberMe}) =
      _$AuthStateImpl;

  @override
  String? get gender;
  @override
  bool get rememberMe;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? gender, bool rememberMe});
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? rememberMe = null,
  }) {
    return _then(_$IdleImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IdleImpl implements Idle {
  const _$IdleImpl({this.gender, this.rememberMe = false});

  @override
  final String? gender;
  @override
  @JsonKey()
  final bool rememberMe;

  @override
  String toString() {
    return 'AuthState.idle(gender: $gender, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender, rememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      __$$IdleImplCopyWithImpl<_$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe) $default, {
    required TResult Function(String? gender, bool rememberMe) idle,
    required TResult Function(String? gender, bool rememberMe) loading,
    required TResult Function(UserModel user, String? gender, bool rememberMe)
        authenticated,
    required TResult Function(String? gender, bool rememberMe) unauthenticated,
    required TResult Function(String message, String? gender, bool rememberMe)
        error,
  }) {
    return idle(gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? gender, bool rememberMe)? $default, {
    TResult? Function(String? gender, bool rememberMe)? idle,
    TResult? Function(String? gender, bool rememberMe)? loading,
    TResult? Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult? Function(String? gender, bool rememberMe)? unauthenticated,
    TResult? Function(String message, String? gender, bool rememberMe)? error,
  }) {
    return idle?.call(gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe)? $default, {
    TResult Function(String? gender, bool rememberMe)? idle,
    TResult Function(String? gender, bool rememberMe)? loading,
    TResult Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult Function(String? gender, bool rememberMe)? unauthenticated,
    TResult Function(String message, String? gender, bool rememberMe)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(gender, rememberMe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthState value)? $default, {
    TResult? Function(Idle value)? idle,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements AuthState {
  const factory Idle({final String? gender, final bool rememberMe}) =
      _$IdleImpl;

  @override
  String? get gender;
  @override
  bool get rememberMe;
  @override
  @JsonKey(ignore: true)
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? gender, bool rememberMe});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? rememberMe = null,
  }) {
    return _then(_$LoadingImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl({this.gender, this.rememberMe = false});

  @override
  final String? gender;
  @override
  @JsonKey()
  final bool rememberMe;

  @override
  String toString() {
    return 'AuthState.loading(gender: $gender, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender, rememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe) $default, {
    required TResult Function(String? gender, bool rememberMe) idle,
    required TResult Function(String? gender, bool rememberMe) loading,
    required TResult Function(UserModel user, String? gender, bool rememberMe)
        authenticated,
    required TResult Function(String? gender, bool rememberMe) unauthenticated,
    required TResult Function(String message, String? gender, bool rememberMe)
        error,
  }) {
    return loading(gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? gender, bool rememberMe)? $default, {
    TResult? Function(String? gender, bool rememberMe)? idle,
    TResult? Function(String? gender, bool rememberMe)? loading,
    TResult? Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult? Function(String? gender, bool rememberMe)? unauthenticated,
    TResult? Function(String message, String? gender, bool rememberMe)? error,
  }) {
    return loading?.call(gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe)? $default, {
    TResult Function(String? gender, bool rememberMe)? idle,
    TResult Function(String? gender, bool rememberMe)? loading,
    TResult Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult Function(String? gender, bool rememberMe)? unauthenticated,
    TResult Function(String message, String? gender, bool rememberMe)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(gender, rememberMe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthState value)? $default, {
    TResult? Function(Idle value)? idle,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuthState {
  const factory Loading({final String? gender, final bool rememberMe}) =
      _$LoadingImpl;

  @override
  String? get gender;
  @override
  bool get rememberMe;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user, String? gender, bool rememberMe});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? gender = freezed,
    Object? rememberMe = null,
  }) {
    return _then(_$AuthenticatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl(this.user, {this.gender, this.rememberMe = false});

  @override
  final UserModel user;
  @override
  final String? gender;
  @override
  @JsonKey()
  final bool rememberMe;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user, gender: $gender, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, gender, rememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe) $default, {
    required TResult Function(String? gender, bool rememberMe) idle,
    required TResult Function(String? gender, bool rememberMe) loading,
    required TResult Function(UserModel user, String? gender, bool rememberMe)
        authenticated,
    required TResult Function(String? gender, bool rememberMe) unauthenticated,
    required TResult Function(String message, String? gender, bool rememberMe)
        error,
  }) {
    return authenticated(user, gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? gender, bool rememberMe)? $default, {
    TResult? Function(String? gender, bool rememberMe)? idle,
    TResult? Function(String? gender, bool rememberMe)? loading,
    TResult? Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult? Function(String? gender, bool rememberMe)? unauthenticated,
    TResult? Function(String message, String? gender, bool rememberMe)? error,
  }) {
    return authenticated?.call(user, gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe)? $default, {
    TResult Function(String? gender, bool rememberMe)? idle,
    TResult Function(String? gender, bool rememberMe)? loading,
    TResult Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult Function(String? gender, bool rememberMe)? unauthenticated,
    TResult Function(String message, String? gender, bool rememberMe)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, gender, rememberMe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthState value)? $default, {
    TResult? Function(Idle value)? idle,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(final UserModel user,
      {final String? gender, final bool rememberMe}) = _$AuthenticatedImpl;

  UserModel get user;
  @override
  String? get gender;
  @override
  bool get rememberMe;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? gender, bool rememberMe});
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? rememberMe = null,
  }) {
    return _then(_$UnauthenticatedImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl({this.gender, this.rememberMe = false});

  @override
  final String? gender;
  @override
  @JsonKey()
  final bool rememberMe;

  @override
  String toString() {
    return 'AuthState.unauthenticated(gender: $gender, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthenticatedImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender, rememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthenticatedImplCopyWith<_$UnauthenticatedImpl> get copyWith =>
      __$$UnauthenticatedImplCopyWithImpl<_$UnauthenticatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe) $default, {
    required TResult Function(String? gender, bool rememberMe) idle,
    required TResult Function(String? gender, bool rememberMe) loading,
    required TResult Function(UserModel user, String? gender, bool rememberMe)
        authenticated,
    required TResult Function(String? gender, bool rememberMe) unauthenticated,
    required TResult Function(String message, String? gender, bool rememberMe)
        error,
  }) {
    return unauthenticated(gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? gender, bool rememberMe)? $default, {
    TResult? Function(String? gender, bool rememberMe)? idle,
    TResult? Function(String? gender, bool rememberMe)? loading,
    TResult? Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult? Function(String? gender, bool rememberMe)? unauthenticated,
    TResult? Function(String message, String? gender, bool rememberMe)? error,
  }) {
    return unauthenticated?.call(gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe)? $default, {
    TResult Function(String? gender, bool rememberMe)? idle,
    TResult Function(String? gender, bool rememberMe)? loading,
    TResult Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult Function(String? gender, bool rememberMe)? unauthenticated,
    TResult Function(String message, String? gender, bool rememberMe)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(gender, rememberMe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Error value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthState value)? $default, {
    TResult? Function(Idle value)? idle,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Error value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated({final String? gender, final bool rememberMe}) =
      _$UnauthenticatedImpl;

  @override
  String? get gender;
  @override
  bool get rememberMe;
  @override
  @JsonKey(ignore: true)
  _$$UnauthenticatedImplCopyWith<_$UnauthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? gender, bool rememberMe});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? gender = freezed,
    Object? rememberMe = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message, {this.gender, this.rememberMe = false});

  @override
  final String message;
  @override
  final String? gender;
  @override
  @JsonKey()
  final bool rememberMe;

  @override
  String toString() {
    return 'AuthState.error(message: $message, gender: $gender, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, gender, rememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe) $default, {
    required TResult Function(String? gender, bool rememberMe) idle,
    required TResult Function(String? gender, bool rememberMe) loading,
    required TResult Function(UserModel user, String? gender, bool rememberMe)
        authenticated,
    required TResult Function(String? gender, bool rememberMe) unauthenticated,
    required TResult Function(String message, String? gender, bool rememberMe)
        error,
  }) {
    return error(message, gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? gender, bool rememberMe)? $default, {
    TResult? Function(String? gender, bool rememberMe)? idle,
    TResult? Function(String? gender, bool rememberMe)? loading,
    TResult? Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult? Function(String? gender, bool rememberMe)? unauthenticated,
    TResult? Function(String message, String? gender, bool rememberMe)? error,
  }) {
    return error?.call(message, gender, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? gender, bool rememberMe)? $default, {
    TResult Function(String? gender, bool rememberMe)? idle,
    TResult Function(String? gender, bool rememberMe)? loading,
    TResult Function(UserModel user, String? gender, bool rememberMe)?
        authenticated,
    TResult Function(String? gender, bool rememberMe)? unauthenticated,
    TResult Function(String message, String? gender, bool rememberMe)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, gender, rememberMe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(Idle value) idle,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthState value)? $default, {
    TResult? Function(Idle value)? idle,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(Idle value)? idle,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AuthState {
  const factory Error(final String message,
      {final String? gender, final bool rememberMe}) = _$ErrorImpl;

  String get message;
  @override
  String? get gender;
  @override
  bool get rememberMe;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
