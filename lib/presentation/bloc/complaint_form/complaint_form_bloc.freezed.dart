// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ComplaintFormEvent {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get rt => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phone, String rt,
            String address, String description, XFile? image)
        submitComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phone, String rt, String address,
            String description, XFile? image)?
        submitComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phone, String rt, String address,
            String description, XFile? image)?
        submitComplaint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitComplaint value) submitComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitComplaint value)? submitComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitComplaint value)? submitComplaint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComplaintFormEventCopyWith<ComplaintFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintFormEventCopyWith<$Res> {
  factory $ComplaintFormEventCopyWith(
          ComplaintFormEvent value, $Res Function(ComplaintFormEvent) then) =
      _$ComplaintFormEventCopyWithImpl<$Res, ComplaintFormEvent>;
  @useResult
  $Res call(
      {String name,
      String phone,
      String rt,
      String address,
      String description,
      XFile? image});
}

/// @nodoc
class _$ComplaintFormEventCopyWithImpl<$Res, $Val extends ComplaintFormEvent>
    implements $ComplaintFormEventCopyWith<$Res> {
  _$ComplaintFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? rt = null,
    Object? address = null,
    Object? description = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      rt: null == rt
          ? _value.rt
          : rt // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitComplaintImplCopyWith<$Res>
    implements $ComplaintFormEventCopyWith<$Res> {
  factory _$$SubmitComplaintImplCopyWith(_$SubmitComplaintImpl value,
          $Res Function(_$SubmitComplaintImpl) then) =
      __$$SubmitComplaintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String phone,
      String rt,
      String address,
      String description,
      XFile? image});
}

/// @nodoc
class __$$SubmitComplaintImplCopyWithImpl<$Res>
    extends _$ComplaintFormEventCopyWithImpl<$Res, _$SubmitComplaintImpl>
    implements _$$SubmitComplaintImplCopyWith<$Res> {
  __$$SubmitComplaintImplCopyWithImpl(
      _$SubmitComplaintImpl _value, $Res Function(_$SubmitComplaintImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? rt = null,
    Object? address = null,
    Object? description = null,
    Object? image = freezed,
  }) {
    return _then(_$SubmitComplaintImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      rt: null == rt
          ? _value.rt
          : rt // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$SubmitComplaintImpl implements _SubmitComplaint {
  const _$SubmitComplaintImpl(
      {required this.name,
      required this.phone,
      required this.rt,
      required this.address,
      required this.description,
      required this.image});

  @override
  final String name;
  @override
  final String phone;
  @override
  final String rt;
  @override
  final String address;
  @override
  final String description;
  @override
  final XFile? image;

  @override
  String toString() {
    return 'ComplaintFormEvent.submitComplaint(name: $name, phone: $phone, rt: $rt, address: $address, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitComplaintImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rt, rt) || other.rt == rt) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phone, rt, address, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitComplaintImplCopyWith<_$SubmitComplaintImpl> get copyWith =>
      __$$SubmitComplaintImplCopyWithImpl<_$SubmitComplaintImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phone, String rt,
            String address, String description, XFile? image)
        submitComplaint,
  }) {
    return submitComplaint(name, phone, rt, address, description, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phone, String rt, String address,
            String description, XFile? image)?
        submitComplaint,
  }) {
    return submitComplaint?.call(name, phone, rt, address, description, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phone, String rt, String address,
            String description, XFile? image)?
        submitComplaint,
    required TResult orElse(),
  }) {
    if (submitComplaint != null) {
      return submitComplaint(name, phone, rt, address, description, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitComplaint value) submitComplaint,
  }) {
    return submitComplaint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitComplaint value)? submitComplaint,
  }) {
    return submitComplaint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitComplaint value)? submitComplaint,
    required TResult orElse(),
  }) {
    if (submitComplaint != null) {
      return submitComplaint(this);
    }
    return orElse();
  }
}

abstract class _SubmitComplaint implements ComplaintFormEvent {
  const factory _SubmitComplaint(
      {required final String name,
      required final String phone,
      required final String rt,
      required final String address,
      required final String description,
      required final XFile? image}) = _$SubmitComplaintImpl;

  @override
  String get name;
  @override
  String get phone;
  @override
  String get rt;
  @override
  String get address;
  @override
  String get description;
  @override
  XFile? get image;
  @override
  @JsonKey(ignore: true)
  _$$SubmitComplaintImplCopyWith<_$SubmitComplaintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ComplaintFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complaintFormInitial,
    required TResult Function() complaintFormLoading,
    required TResult Function() complaintFormSuccess,
    required TResult Function(String message) complaintFormError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complaintFormInitial,
    TResult? Function()? complaintFormLoading,
    TResult? Function()? complaintFormSuccess,
    TResult? Function(String message)? complaintFormError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complaintFormInitial,
    TResult Function()? complaintFormLoading,
    TResult Function()? complaintFormSuccess,
    TResult Function(String message)? complaintFormError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComplaintFormInitial value) complaintFormInitial,
    required TResult Function(_ComplaintFormLoading value) complaintFormLoading,
    required TResult Function(_ComplaintFormSuccess value) complaintFormSuccess,
    required TResult Function(_ComplaintFormError value) complaintFormError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComplaintFormInitial value)? complaintFormInitial,
    TResult? Function(_ComplaintFormLoading value)? complaintFormLoading,
    TResult? Function(_ComplaintFormSuccess value)? complaintFormSuccess,
    TResult? Function(_ComplaintFormError value)? complaintFormError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComplaintFormInitial value)? complaintFormInitial,
    TResult Function(_ComplaintFormLoading value)? complaintFormLoading,
    TResult Function(_ComplaintFormSuccess value)? complaintFormSuccess,
    TResult Function(_ComplaintFormError value)? complaintFormError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintFormStateCopyWith<$Res> {
  factory $ComplaintFormStateCopyWith(
          ComplaintFormState value, $Res Function(ComplaintFormState) then) =
      _$ComplaintFormStateCopyWithImpl<$Res, ComplaintFormState>;
}

/// @nodoc
class _$ComplaintFormStateCopyWithImpl<$Res, $Val extends ComplaintFormState>
    implements $ComplaintFormStateCopyWith<$Res> {
  _$ComplaintFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ComplaintFormInitialImplCopyWith<$Res> {
  factory _$$ComplaintFormInitialImplCopyWith(_$ComplaintFormInitialImpl value,
          $Res Function(_$ComplaintFormInitialImpl) then) =
      __$$ComplaintFormInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ComplaintFormInitialImplCopyWithImpl<$Res>
    extends _$ComplaintFormStateCopyWithImpl<$Res, _$ComplaintFormInitialImpl>
    implements _$$ComplaintFormInitialImplCopyWith<$Res> {
  __$$ComplaintFormInitialImplCopyWithImpl(_$ComplaintFormInitialImpl _value,
      $Res Function(_$ComplaintFormInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ComplaintFormInitialImpl implements _ComplaintFormInitial {
  const _$ComplaintFormInitialImpl();

  @override
  String toString() {
    return 'ComplaintFormState.complaintFormInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintFormInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complaintFormInitial,
    required TResult Function() complaintFormLoading,
    required TResult Function() complaintFormSuccess,
    required TResult Function(String message) complaintFormError,
  }) {
    return complaintFormInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complaintFormInitial,
    TResult? Function()? complaintFormLoading,
    TResult? Function()? complaintFormSuccess,
    TResult? Function(String message)? complaintFormError,
  }) {
    return complaintFormInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complaintFormInitial,
    TResult Function()? complaintFormLoading,
    TResult Function()? complaintFormSuccess,
    TResult Function(String message)? complaintFormError,
    required TResult orElse(),
  }) {
    if (complaintFormInitial != null) {
      return complaintFormInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComplaintFormInitial value) complaintFormInitial,
    required TResult Function(_ComplaintFormLoading value) complaintFormLoading,
    required TResult Function(_ComplaintFormSuccess value) complaintFormSuccess,
    required TResult Function(_ComplaintFormError value) complaintFormError,
  }) {
    return complaintFormInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComplaintFormInitial value)? complaintFormInitial,
    TResult? Function(_ComplaintFormLoading value)? complaintFormLoading,
    TResult? Function(_ComplaintFormSuccess value)? complaintFormSuccess,
    TResult? Function(_ComplaintFormError value)? complaintFormError,
  }) {
    return complaintFormInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComplaintFormInitial value)? complaintFormInitial,
    TResult Function(_ComplaintFormLoading value)? complaintFormLoading,
    TResult Function(_ComplaintFormSuccess value)? complaintFormSuccess,
    TResult Function(_ComplaintFormError value)? complaintFormError,
    required TResult orElse(),
  }) {
    if (complaintFormInitial != null) {
      return complaintFormInitial(this);
    }
    return orElse();
  }
}

abstract class _ComplaintFormInitial implements ComplaintFormState {
  const factory _ComplaintFormInitial() = _$ComplaintFormInitialImpl;
}

/// @nodoc
abstract class _$$ComplaintFormLoadingImplCopyWith<$Res> {
  factory _$$ComplaintFormLoadingImplCopyWith(_$ComplaintFormLoadingImpl value,
          $Res Function(_$ComplaintFormLoadingImpl) then) =
      __$$ComplaintFormLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ComplaintFormLoadingImplCopyWithImpl<$Res>
    extends _$ComplaintFormStateCopyWithImpl<$Res, _$ComplaintFormLoadingImpl>
    implements _$$ComplaintFormLoadingImplCopyWith<$Res> {
  __$$ComplaintFormLoadingImplCopyWithImpl(_$ComplaintFormLoadingImpl _value,
      $Res Function(_$ComplaintFormLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ComplaintFormLoadingImpl implements _ComplaintFormLoading {
  const _$ComplaintFormLoadingImpl();

  @override
  String toString() {
    return 'ComplaintFormState.complaintFormLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintFormLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complaintFormInitial,
    required TResult Function() complaintFormLoading,
    required TResult Function() complaintFormSuccess,
    required TResult Function(String message) complaintFormError,
  }) {
    return complaintFormLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complaintFormInitial,
    TResult? Function()? complaintFormLoading,
    TResult? Function()? complaintFormSuccess,
    TResult? Function(String message)? complaintFormError,
  }) {
    return complaintFormLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complaintFormInitial,
    TResult Function()? complaintFormLoading,
    TResult Function()? complaintFormSuccess,
    TResult Function(String message)? complaintFormError,
    required TResult orElse(),
  }) {
    if (complaintFormLoading != null) {
      return complaintFormLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComplaintFormInitial value) complaintFormInitial,
    required TResult Function(_ComplaintFormLoading value) complaintFormLoading,
    required TResult Function(_ComplaintFormSuccess value) complaintFormSuccess,
    required TResult Function(_ComplaintFormError value) complaintFormError,
  }) {
    return complaintFormLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComplaintFormInitial value)? complaintFormInitial,
    TResult? Function(_ComplaintFormLoading value)? complaintFormLoading,
    TResult? Function(_ComplaintFormSuccess value)? complaintFormSuccess,
    TResult? Function(_ComplaintFormError value)? complaintFormError,
  }) {
    return complaintFormLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComplaintFormInitial value)? complaintFormInitial,
    TResult Function(_ComplaintFormLoading value)? complaintFormLoading,
    TResult Function(_ComplaintFormSuccess value)? complaintFormSuccess,
    TResult Function(_ComplaintFormError value)? complaintFormError,
    required TResult orElse(),
  }) {
    if (complaintFormLoading != null) {
      return complaintFormLoading(this);
    }
    return orElse();
  }
}

abstract class _ComplaintFormLoading implements ComplaintFormState {
  const factory _ComplaintFormLoading() = _$ComplaintFormLoadingImpl;
}

/// @nodoc
abstract class _$$ComplaintFormSuccessImplCopyWith<$Res> {
  factory _$$ComplaintFormSuccessImplCopyWith(_$ComplaintFormSuccessImpl value,
          $Res Function(_$ComplaintFormSuccessImpl) then) =
      __$$ComplaintFormSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ComplaintFormSuccessImplCopyWithImpl<$Res>
    extends _$ComplaintFormStateCopyWithImpl<$Res, _$ComplaintFormSuccessImpl>
    implements _$$ComplaintFormSuccessImplCopyWith<$Res> {
  __$$ComplaintFormSuccessImplCopyWithImpl(_$ComplaintFormSuccessImpl _value,
      $Res Function(_$ComplaintFormSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ComplaintFormSuccessImpl implements _ComplaintFormSuccess {
  const _$ComplaintFormSuccessImpl();

  @override
  String toString() {
    return 'ComplaintFormState.complaintFormSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintFormSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complaintFormInitial,
    required TResult Function() complaintFormLoading,
    required TResult Function() complaintFormSuccess,
    required TResult Function(String message) complaintFormError,
  }) {
    return complaintFormSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complaintFormInitial,
    TResult? Function()? complaintFormLoading,
    TResult? Function()? complaintFormSuccess,
    TResult? Function(String message)? complaintFormError,
  }) {
    return complaintFormSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complaintFormInitial,
    TResult Function()? complaintFormLoading,
    TResult Function()? complaintFormSuccess,
    TResult Function(String message)? complaintFormError,
    required TResult orElse(),
  }) {
    if (complaintFormSuccess != null) {
      return complaintFormSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComplaintFormInitial value) complaintFormInitial,
    required TResult Function(_ComplaintFormLoading value) complaintFormLoading,
    required TResult Function(_ComplaintFormSuccess value) complaintFormSuccess,
    required TResult Function(_ComplaintFormError value) complaintFormError,
  }) {
    return complaintFormSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComplaintFormInitial value)? complaintFormInitial,
    TResult? Function(_ComplaintFormLoading value)? complaintFormLoading,
    TResult? Function(_ComplaintFormSuccess value)? complaintFormSuccess,
    TResult? Function(_ComplaintFormError value)? complaintFormError,
  }) {
    return complaintFormSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComplaintFormInitial value)? complaintFormInitial,
    TResult Function(_ComplaintFormLoading value)? complaintFormLoading,
    TResult Function(_ComplaintFormSuccess value)? complaintFormSuccess,
    TResult Function(_ComplaintFormError value)? complaintFormError,
    required TResult orElse(),
  }) {
    if (complaintFormSuccess != null) {
      return complaintFormSuccess(this);
    }
    return orElse();
  }
}

abstract class _ComplaintFormSuccess implements ComplaintFormState {
  const factory _ComplaintFormSuccess() = _$ComplaintFormSuccessImpl;
}

/// @nodoc
abstract class _$$ComplaintFormErrorImplCopyWith<$Res> {
  factory _$$ComplaintFormErrorImplCopyWith(_$ComplaintFormErrorImpl value,
          $Res Function(_$ComplaintFormErrorImpl) then) =
      __$$ComplaintFormErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ComplaintFormErrorImplCopyWithImpl<$Res>
    extends _$ComplaintFormStateCopyWithImpl<$Res, _$ComplaintFormErrorImpl>
    implements _$$ComplaintFormErrorImplCopyWith<$Res> {
  __$$ComplaintFormErrorImplCopyWithImpl(_$ComplaintFormErrorImpl _value,
      $Res Function(_$ComplaintFormErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ComplaintFormErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ComplaintFormErrorImpl implements _ComplaintFormError {
  const _$ComplaintFormErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ComplaintFormState.complaintFormError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintFormErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintFormErrorImplCopyWith<_$ComplaintFormErrorImpl> get copyWith =>
      __$$ComplaintFormErrorImplCopyWithImpl<_$ComplaintFormErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complaintFormInitial,
    required TResult Function() complaintFormLoading,
    required TResult Function() complaintFormSuccess,
    required TResult Function(String message) complaintFormError,
  }) {
    return complaintFormError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? complaintFormInitial,
    TResult? Function()? complaintFormLoading,
    TResult? Function()? complaintFormSuccess,
    TResult? Function(String message)? complaintFormError,
  }) {
    return complaintFormError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complaintFormInitial,
    TResult Function()? complaintFormLoading,
    TResult Function()? complaintFormSuccess,
    TResult Function(String message)? complaintFormError,
    required TResult orElse(),
  }) {
    if (complaintFormError != null) {
      return complaintFormError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComplaintFormInitial value) complaintFormInitial,
    required TResult Function(_ComplaintFormLoading value) complaintFormLoading,
    required TResult Function(_ComplaintFormSuccess value) complaintFormSuccess,
    required TResult Function(_ComplaintFormError value) complaintFormError,
  }) {
    return complaintFormError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComplaintFormInitial value)? complaintFormInitial,
    TResult? Function(_ComplaintFormLoading value)? complaintFormLoading,
    TResult? Function(_ComplaintFormSuccess value)? complaintFormSuccess,
    TResult? Function(_ComplaintFormError value)? complaintFormError,
  }) {
    return complaintFormError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComplaintFormInitial value)? complaintFormInitial,
    TResult Function(_ComplaintFormLoading value)? complaintFormLoading,
    TResult Function(_ComplaintFormSuccess value)? complaintFormSuccess,
    TResult Function(_ComplaintFormError value)? complaintFormError,
    required TResult orElse(),
  }) {
    if (complaintFormError != null) {
      return complaintFormError(this);
    }
    return orElse();
  }
}

abstract class _ComplaintFormError implements ComplaintFormState {
  const factory _ComplaintFormError(final String message) =
      _$ComplaintFormErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ComplaintFormErrorImplCopyWith<_$ComplaintFormErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
