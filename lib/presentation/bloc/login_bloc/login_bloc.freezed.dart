// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() loggedOut,
    required TResult Function() isLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? loggedOut,
    TResult? Function()? isLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? loggedOut,
    TResult Function()? isLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_IsLoggedIn value)? isLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() loggedOut,
    required TResult Function() isLoggedIn,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? loggedOut,
    TResult? Function()? isLoggedIn,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? loggedOut,
    TResult Function()? isLoggedIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_IsLoggedIn value)? isLoggedIn,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login(
      {required final String email,
      required final String password}) = _$LoginImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'LoginEvent.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() loggedOut,
    required TResult Function() isLoggedIn,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? loggedOut,
    TResult? Function()? isLoggedIn,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? loggedOut,
    TResult Function()? isLoggedIn,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_IsLoggedIn value)? isLoggedIn,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements LoginEvent {
  const factory _LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
abstract class _$$IsLoggedInImplCopyWith<$Res> {
  factory _$$IsLoggedInImplCopyWith(
          _$IsLoggedInImpl value, $Res Function(_$IsLoggedInImpl) then) =
      __$$IsLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsLoggedInImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$IsLoggedInImpl>
    implements _$$IsLoggedInImplCopyWith<$Res> {
  __$$IsLoggedInImplCopyWithImpl(
      _$IsLoggedInImpl _value, $Res Function(_$IsLoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsLoggedInImpl implements _IsLoggedIn {
  const _$IsLoggedInImpl();

  @override
  String toString() {
    return 'LoginEvent.isLoggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsLoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() loggedOut,
    required TResult Function() isLoggedIn,
  }) {
    return isLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? loggedOut,
    TResult? Function()? isLoggedIn,
  }) {
    return isLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? loggedOut,
    TResult Function()? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) {
    return isLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_IsLoggedIn value)? isLoggedIn,
  }) {
    return isLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _IsLoggedIn implements LoginEvent {
  const factory _IsLoggedIn() = _$IsLoggedInImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() notLoggedIn,
    required TResult Function() loginLoading,
    required TResult Function() loggedIn,
    required TResult Function(String message) loginError,
    required TResult Function(String message) loginRoleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? notLoggedIn,
    TResult? Function()? loginLoading,
    TResult? Function()? loggedIn,
    TResult? Function(String message)? loginError,
    TResult? Function(String message)? loginRoleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? notLoggedIn,
    TResult Function()? loginLoading,
    TResult Function()? loggedIn,
    TResult Function(String message)? loginError,
    TResult Function(String message)? loginRoleError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitial value) loginInitial,
    required TResult Function(_NotLoggedIn value) notLoggedIn,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_LoginRoleError value) loginRoleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitial value)? loginInitial,
    TResult? Function(_NotLoggedIn value)? notLoggedIn,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_LoginRoleError value)? loginRoleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitial value)? loginInitial,
    TResult Function(_NotLoggedIn value)? notLoggedIn,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_LoginRoleError value)? loginRoleError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginInitialImplCopyWith<$Res> {
  factory _$$LoginInitialImplCopyWith(
          _$LoginInitialImpl value, $Res Function(_$LoginInitialImpl) then) =
      __$$LoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitialImpl>
    implements _$$LoginInitialImplCopyWith<$Res> {
  __$$LoginInitialImplCopyWithImpl(
      _$LoginInitialImpl _value, $Res Function(_$LoginInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginInitialImpl implements _LoginInitial {
  const _$LoginInitialImpl();

  @override
  String toString() {
    return 'LoginState.loginInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() notLoggedIn,
    required TResult Function() loginLoading,
    required TResult Function() loggedIn,
    required TResult Function(String message) loginError,
    required TResult Function(String message) loginRoleError,
  }) {
    return loginInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? notLoggedIn,
    TResult? Function()? loginLoading,
    TResult? Function()? loggedIn,
    TResult? Function(String message)? loginError,
    TResult? Function(String message)? loginRoleError,
  }) {
    return loginInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? notLoggedIn,
    TResult Function()? loginLoading,
    TResult Function()? loggedIn,
    TResult Function(String message)? loginError,
    TResult Function(String message)? loginRoleError,
    required TResult orElse(),
  }) {
    if (loginInitial != null) {
      return loginInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitial value) loginInitial,
    required TResult Function(_NotLoggedIn value) notLoggedIn,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_LoginRoleError value) loginRoleError,
  }) {
    return loginInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitial value)? loginInitial,
    TResult? Function(_NotLoggedIn value)? notLoggedIn,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_LoginRoleError value)? loginRoleError,
  }) {
    return loginInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitial value)? loginInitial,
    TResult Function(_NotLoggedIn value)? notLoggedIn,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_LoginRoleError value)? loginRoleError,
    required TResult orElse(),
  }) {
    if (loginInitial != null) {
      return loginInitial(this);
    }
    return orElse();
  }
}

abstract class _LoginInitial implements LoginState {
  const factory _LoginInitial() = _$LoginInitialImpl;
}

/// @nodoc
abstract class _$$NotLoggedInImplCopyWith<$Res> {
  factory _$$NotLoggedInImplCopyWith(
          _$NotLoggedInImpl value, $Res Function(_$NotLoggedInImpl) then) =
      __$$NotLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLoggedInImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$NotLoggedInImpl>
    implements _$$NotLoggedInImplCopyWith<$Res> {
  __$$NotLoggedInImplCopyWithImpl(
      _$NotLoggedInImpl _value, $Res Function(_$NotLoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotLoggedInImpl implements _NotLoggedIn {
  const _$NotLoggedInImpl();

  @override
  String toString() {
    return 'LoginState.notLoggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() notLoggedIn,
    required TResult Function() loginLoading,
    required TResult Function() loggedIn,
    required TResult Function(String message) loginError,
    required TResult Function(String message) loginRoleError,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? notLoggedIn,
    TResult? Function()? loginLoading,
    TResult? Function()? loggedIn,
    TResult? Function(String message)? loginError,
    TResult? Function(String message)? loginRoleError,
  }) {
    return notLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? notLoggedIn,
    TResult Function()? loginLoading,
    TResult Function()? loggedIn,
    TResult Function(String message)? loginError,
    TResult Function(String message)? loginRoleError,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitial value) loginInitial,
    required TResult Function(_NotLoggedIn value) notLoggedIn,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_LoginRoleError value) loginRoleError,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitial value)? loginInitial,
    TResult? Function(_NotLoggedIn value)? notLoggedIn,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_LoginRoleError value)? loginRoleError,
  }) {
    return notLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitial value)? loginInitial,
    TResult Function(_NotLoggedIn value)? notLoggedIn,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_LoginRoleError value)? loginRoleError,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _NotLoggedIn implements LoginState {
  const factory _NotLoggedIn() = _$NotLoggedInImpl;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingImpl implements _LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'LoginState.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() notLoggedIn,
    required TResult Function() loginLoading,
    required TResult Function() loggedIn,
    required TResult Function(String message) loginError,
    required TResult Function(String message) loginRoleError,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? notLoggedIn,
    TResult? Function()? loginLoading,
    TResult? Function()? loggedIn,
    TResult? Function(String message)? loginError,
    TResult? Function(String message)? loginRoleError,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? notLoggedIn,
    TResult Function()? loginLoading,
    TResult Function()? loggedIn,
    TResult Function(String message)? loginError,
    TResult Function(String message)? loginRoleError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitial value) loginInitial,
    required TResult Function(_NotLoggedIn value) notLoggedIn,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_LoginRoleError value) loginRoleError,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitial value)? loginInitial,
    TResult? Function(_NotLoggedIn value)? notLoggedIn,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_LoginRoleError value)? loginRoleError,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitial value)? loginInitial,
    TResult Function(_NotLoggedIn value)? notLoggedIn,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_LoginRoleError value)? loginRoleError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class _LoginLoading implements LoginState {
  const factory _LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl();

  @override
  String toString() {
    return 'LoginState.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() notLoggedIn,
    required TResult Function() loginLoading,
    required TResult Function() loggedIn,
    required TResult Function(String message) loginError,
    required TResult Function(String message) loginRoleError,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? notLoggedIn,
    TResult? Function()? loginLoading,
    TResult? Function()? loggedIn,
    TResult? Function(String message)? loginError,
    TResult? Function(String message)? loginRoleError,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? notLoggedIn,
    TResult Function()? loginLoading,
    TResult Function()? loggedIn,
    TResult Function(String message)? loginError,
    TResult Function(String message)? loginRoleError,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitial value) loginInitial,
    required TResult Function(_NotLoggedIn value) notLoggedIn,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_LoginRoleError value) loginRoleError,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitial value)? loginInitial,
    TResult? Function(_NotLoggedIn value)? notLoggedIn,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_LoginRoleError value)? loginRoleError,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitial value)? loginInitial,
    TResult Function(_NotLoggedIn value)? notLoggedIn,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_LoginRoleError value)? loginRoleError,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements LoginState {
  const factory _LoggedIn() = _$LoggedInImpl;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl implements _LoginError {
  const _$LoginErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.loginError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() notLoggedIn,
    required TResult Function() loginLoading,
    required TResult Function() loggedIn,
    required TResult Function(String message) loginError,
    required TResult Function(String message) loginRoleError,
  }) {
    return loginError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? notLoggedIn,
    TResult? Function()? loginLoading,
    TResult? Function()? loggedIn,
    TResult? Function(String message)? loginError,
    TResult? Function(String message)? loginRoleError,
  }) {
    return loginError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? notLoggedIn,
    TResult Function()? loginLoading,
    TResult Function()? loggedIn,
    TResult Function(String message)? loginError,
    TResult Function(String message)? loginRoleError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitial value) loginInitial,
    required TResult Function(_NotLoggedIn value) notLoggedIn,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_LoginRoleError value) loginRoleError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitial value)? loginInitial,
    TResult? Function(_NotLoggedIn value)? notLoggedIn,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_LoginRoleError value)? loginRoleError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitial value)? loginInitial,
    TResult Function(_NotLoggedIn value)? notLoggedIn,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_LoginRoleError value)? loginRoleError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class _LoginError implements LoginState {
  const factory _LoginError(final String message) = _$LoginErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginRoleErrorImplCopyWith<$Res> {
  factory _$$LoginRoleErrorImplCopyWith(_$LoginRoleErrorImpl value,
          $Res Function(_$LoginRoleErrorImpl) then) =
      __$$LoginRoleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginRoleErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginRoleErrorImpl>
    implements _$$LoginRoleErrorImplCopyWith<$Res> {
  __$$LoginRoleErrorImplCopyWithImpl(
      _$LoginRoleErrorImpl _value, $Res Function(_$LoginRoleErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginRoleErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginRoleErrorImpl implements _LoginRoleError {
  const _$LoginRoleErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.loginRoleError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRoleErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRoleErrorImplCopyWith<_$LoginRoleErrorImpl> get copyWith =>
      __$$LoginRoleErrorImplCopyWithImpl<_$LoginRoleErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() notLoggedIn,
    required TResult Function() loginLoading,
    required TResult Function() loggedIn,
    required TResult Function(String message) loginError,
    required TResult Function(String message) loginRoleError,
  }) {
    return loginRoleError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? notLoggedIn,
    TResult? Function()? loginLoading,
    TResult? Function()? loggedIn,
    TResult? Function(String message)? loginError,
    TResult? Function(String message)? loginRoleError,
  }) {
    return loginRoleError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? notLoggedIn,
    TResult Function()? loginLoading,
    TResult Function()? loggedIn,
    TResult Function(String message)? loginError,
    TResult Function(String message)? loginRoleError,
    required TResult orElse(),
  }) {
    if (loginRoleError != null) {
      return loginRoleError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitial value) loginInitial,
    required TResult Function(_NotLoggedIn value) notLoggedIn,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_LoginRoleError value) loginRoleError,
  }) {
    return loginRoleError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitial value)? loginInitial,
    TResult? Function(_NotLoggedIn value)? notLoggedIn,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_LoginRoleError value)? loginRoleError,
  }) {
    return loginRoleError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitial value)? loginInitial,
    TResult Function(_NotLoggedIn value)? notLoggedIn,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_LoginRoleError value)? loginRoleError,
    required TResult orElse(),
  }) {
    if (loginRoleError != null) {
      return loginRoleError(this);
    }
    return orElse();
  }
}

abstract class _LoginRoleError implements LoginState {
  const factory _LoginRoleError(final String message) = _$LoginRoleErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginRoleErrorImplCopyWith<_$LoginRoleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
