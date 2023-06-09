// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_network_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkRequestBody {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(FormData data) fromData,
    required TResult Function(String data) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(FormData data)? fromData,
    TResult? Function(String data)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(FormData data)? fromData,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Formdata value) fromData,
    required TResult Function(Text value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(Formdata value)? fromData,
    TResult? Function(Text value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Formdata value)? fromData,
    TResult Function(Text value)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkRequestBodyCopyWith<$Res> {
  factory $NetworkRequestBodyCopyWith(
          NetworkRequestBody value, $Res Function(NetworkRequestBody) then) =
      _$NetworkRequestBodyCopyWithImpl<$Res, NetworkRequestBody>;
}

/// @nodoc
class _$NetworkRequestBodyCopyWithImpl<$Res, $Val extends NetworkRequestBody>
    implements $NetworkRequestBodyCopyWith<$Res> {
  _$NetworkRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyCopyWith<$Res> {
  factory _$$EmptyCopyWith(_$Empty value, $Res Function(_$Empty) then) =
      __$$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyCopyWithImpl<$Res>
    extends _$NetworkRequestBodyCopyWithImpl<$Res, _$Empty>
    implements _$$EmptyCopyWith<$Res> {
  __$$EmptyCopyWithImpl(_$Empty _value, $Res Function(_$Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Empty with DiagnosticableTreeMixin implements Empty {
  const _$Empty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkRequestBody.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NetworkRequestBody.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(FormData data) fromData,
    required TResult Function(String data) text,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(FormData data)? fromData,
    TResult? Function(String data)? text,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(FormData data)? fromData,
    TResult Function(String data)? text,
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
    required TResult Function(Empty value) empty,
    required TResult Function(Formdata value) fromData,
    required TResult Function(Text value) text,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(Formdata value)? fromData,
    TResult? Function(Text value)? text,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Formdata value)? fromData,
    TResult Function(Text value)? text,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements NetworkRequestBody {
  const factory Empty() = _$Empty;
}

/// @nodoc
abstract class _$$FormdataCopyWith<$Res> {
  factory _$$FormdataCopyWith(
          _$Formdata value, $Res Function(_$Formdata) then) =
      __$$FormdataCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData data});
}

/// @nodoc
class __$$FormdataCopyWithImpl<$Res>
    extends _$NetworkRequestBodyCopyWithImpl<$Res, _$Formdata>
    implements _$$FormdataCopyWith<$Res> {
  __$$FormdataCopyWithImpl(_$Formdata _value, $Res Function(_$Formdata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$Formdata(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$Formdata with DiagnosticableTreeMixin implements Formdata {
  const _$Formdata(this.data);

  @override
  final FormData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkRequestBody.fromData(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkRequestBody.fromData'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Formdata &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormdataCopyWith<_$Formdata> get copyWith =>
      __$$FormdataCopyWithImpl<_$Formdata>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(FormData data) fromData,
    required TResult Function(String data) text,
  }) {
    return fromData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(FormData data)? fromData,
    TResult? Function(String data)? text,
  }) {
    return fromData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(FormData data)? fromData,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) {
    if (fromData != null) {
      return fromData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Formdata value) fromData,
    required TResult Function(Text value) text,
  }) {
    return fromData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(Formdata value)? fromData,
    TResult? Function(Text value)? text,
  }) {
    return fromData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Formdata value)? fromData,
    TResult Function(Text value)? text,
    required TResult orElse(),
  }) {
    if (fromData != null) {
      return fromData(this);
    }
    return orElse();
  }
}

abstract class Formdata implements NetworkRequestBody {
  const factory Formdata(final FormData data) = _$Formdata;

  FormData get data;
  @JsonKey(ignore: true)
  _$$FormdataCopyWith<_$Formdata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextCopyWith<$Res> {
  factory _$$TextCopyWith(_$Text value, $Res Function(_$Text) then) =
      __$$TextCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$TextCopyWithImpl<$Res>
    extends _$NetworkRequestBodyCopyWithImpl<$Res, _$Text>
    implements _$$TextCopyWith<$Res> {
  __$$TextCopyWithImpl(_$Text _value, $Res Function(_$Text) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$Text(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Text with DiagnosticableTreeMixin implements Text {
  const _$Text(this.data);

  @override
  final String data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkRequestBody.text(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkRequestBody.text'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Text &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextCopyWith<_$Text> get copyWith =>
      __$$TextCopyWithImpl<_$Text>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(FormData data) fromData,
    required TResult Function(String data) text,
  }) {
    return text(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(FormData data)? fromData,
    TResult? Function(String data)? text,
  }) {
    return text?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(FormData data)? fromData,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Formdata value) fromData,
    required TResult Function(Text value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(Formdata value)? fromData,
    TResult? Function(Text value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Formdata value)? fromData,
    TResult Function(Text value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class Text implements NetworkRequestBody {
  const factory Text(final String data) = _$Text;

  String get data;
  @JsonKey(ignore: true)
  _$$TextCopyWith<_$Text> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NetworkResponse<Model> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(Model data) invalidParameters,
    required TResult Function(Model data) noAuth,
    required TResult Function(Model data) noAccess,
    required TResult Function(Model data) badRequest,
    required TResult Function(Model data) notFound,
    required TResult Function(Model data) conflict,
    required TResult Function(String message) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(Model data)? invalidParameters,
    TResult? Function(Model data)? noAuth,
    TResult? Function(Model data)? noAccess,
    TResult? Function(Model data)? badRequest,
    TResult? Function(Model data)? notFound,
    TResult? Function(Model data)? conflict,
    TResult? Function(String message)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(Model data)? invalidParameters,
    TResult Function(Model data)? noAuth,
    TResult Function(Model data)? noAccess,
    TResult Function(Model data)? badRequest,
    TResult Function(Model data)? notFound,
    TResult Function(Model data)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResponseCopyWith<Model, $Res> {
  factory $NetworkResponseCopyWith(NetworkResponse<Model> value,
          $Res Function(NetworkResponse<Model>) then) =
      _$NetworkResponseCopyWithImpl<Model, $Res, NetworkResponse<Model>>;
}

/// @nodoc
class _$NetworkResponseCopyWithImpl<Model, $Res,
        $Val extends NetworkResponse<Model>>
    implements $NetworkResponseCopyWith<Model, $Res> {
  _$NetworkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OkCopyWith<Model, $Res> {
  factory _$$OkCopyWith(_$Ok<Model> value, $Res Function(_$Ok<Model>) then) =
      __$$OkCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({Model data});
}

/// @nodoc
class __$$OkCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$Ok<Model>>
    implements _$$OkCopyWith<Model, $Res> {
  __$$OkCopyWithImpl(_$Ok<Model> _value, $Res Function(_$Ok<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Ok<Model>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Model,
    ));
  }
}

/// @nodoc

class _$Ok<Model> with DiagnosticableTreeMixin implements Ok<Model> {
  const _$Ok(this.data);

  @override
  final Model data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkResponse<$Model>.ok(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkResponse<$Model>.ok'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ok<Model> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkCopyWith<Model, _$Ok<Model>> get copyWith =>
      __$$OkCopyWithImpl<Model, _$Ok<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(Model data) invalidParameters,
    required TResult Function(Model data) noAuth,
    required TResult Function(Model data) noAccess,
    required TResult Function(Model data) badRequest,
    required TResult Function(Model data) notFound,
    required TResult Function(Model data) conflict,
    required TResult Function(String message) noData,
  }) {
    return ok(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(Model data)? invalidParameters,
    TResult? Function(Model data)? noAuth,
    TResult? Function(Model data)? noAccess,
    TResult? Function(Model data)? badRequest,
    TResult? Function(Model data)? notFound,
    TResult? Function(Model data)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return ok?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(Model data)? invalidParameters,
    TResult Function(Model data)? noAuth,
    TResult Function(Model data)? noAccess,
    TResult Function(Model data)? badRequest,
    TResult Function(Model data)? notFound,
    TResult Function(Model data)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class Ok<Model> implements NetworkResponse<Model> {
  const factory Ok(final Model data) = _$Ok<Model>;

  Model get data;
  @JsonKey(ignore: true)
  _$$OkCopyWith<Model, _$Ok<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidParametersCopyWith<Model, $Res> {
  factory _$$InvalidParametersCopyWith(_$InvalidParameters<Model> value,
          $Res Function(_$InvalidParameters<Model>) then) =
      __$$InvalidParametersCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({Model data});
}

/// @nodoc
class __$$InvalidParametersCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res,
        _$InvalidParameters<Model>>
    implements _$$InvalidParametersCopyWith<Model, $Res> {
  __$$InvalidParametersCopyWithImpl(_$InvalidParameters<Model> _value,
      $Res Function(_$InvalidParameters<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$InvalidParameters<Model>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Model,
    ));
  }
}

/// @nodoc

class _$InvalidParameters<Model>
    with DiagnosticableTreeMixin
    implements InvalidParameters<Model> {
  const _$InvalidParameters(this.data);

  @override
  final Model data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkResponse<$Model>.invalidParameters(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NetworkResponse<$Model>.invalidParameters'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidParameters<Model> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidParametersCopyWith<Model, _$InvalidParameters<Model>>
      get copyWith =>
          __$$InvalidParametersCopyWithImpl<Model, _$InvalidParameters<Model>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(Model data) invalidParameters,
    required TResult Function(Model data) noAuth,
    required TResult Function(Model data) noAccess,
    required TResult Function(Model data) badRequest,
    required TResult Function(Model data) notFound,
    required TResult Function(Model data) conflict,
    required TResult Function(String message) noData,
  }) {
    return invalidParameters(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(Model data)? invalidParameters,
    TResult? Function(Model data)? noAuth,
    TResult? Function(Model data)? noAccess,
    TResult? Function(Model data)? badRequest,
    TResult? Function(Model data)? notFound,
    TResult? Function(Model data)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return invalidParameters?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(Model data)? invalidParameters,
    TResult Function(Model data)? noAuth,
    TResult Function(Model data)? noAccess,
    TResult Function(Model data)? badRequest,
    TResult Function(Model data)? notFound,
    TResult Function(Model data)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return invalidParameters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return invalidParameters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(this);
    }
    return orElse();
  }
}

abstract class InvalidParameters<Model> implements NetworkResponse<Model> {
  const factory InvalidParameters(final Model data) =
      _$InvalidParameters<Model>;

  Model get data;
  @JsonKey(ignore: true)
  _$$InvalidParametersCopyWith<Model, _$InvalidParameters<Model>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAuthCopyWith<Model, $Res> {
  factory _$$NoAuthCopyWith(
          _$NoAuth<Model> value, $Res Function(_$NoAuth<Model>) then) =
      __$$NoAuthCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({Model data});
}

/// @nodoc
class __$$NoAuthCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$NoAuth<Model>>
    implements _$$NoAuthCopyWith<Model, $Res> {
  __$$NoAuthCopyWithImpl(
      _$NoAuth<Model> _value, $Res Function(_$NoAuth<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NoAuth<Model>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Model,
    ));
  }
}

/// @nodoc

class _$NoAuth<Model> with DiagnosticableTreeMixin implements NoAuth<Model> {
  const _$NoAuth(this.data);

  @override
  final Model data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkResponse<$Model>.noAuth(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkResponse<$Model>.noAuth'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAuth<Model> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoAuthCopyWith<Model, _$NoAuth<Model>> get copyWith =>
      __$$NoAuthCopyWithImpl<Model, _$NoAuth<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(Model data) invalidParameters,
    required TResult Function(Model data) noAuth,
    required TResult Function(Model data) noAccess,
    required TResult Function(Model data) badRequest,
    required TResult Function(Model data) notFound,
    required TResult Function(Model data) conflict,
    required TResult Function(String message) noData,
  }) {
    return noAuth(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(Model data)? invalidParameters,
    TResult? Function(Model data)? noAuth,
    TResult? Function(Model data)? noAccess,
    TResult? Function(Model data)? badRequest,
    TResult? Function(Model data)? notFound,
    TResult? Function(Model data)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return noAuth?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(Model data)? invalidParameters,
    TResult Function(Model data)? noAuth,
    TResult Function(Model data)? noAccess,
    TResult Function(Model data)? badRequest,
    TResult Function(Model data)? notFound,
    TResult Function(Model data)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return noAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return noAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth(this);
    }
    return orElse();
  }
}

abstract class NoAuth<Model> implements NetworkResponse<Model> {
  const factory NoAuth(final Model data) = _$NoAuth<Model>;

  Model get data;
  @JsonKey(ignore: true)
  _$$NoAuthCopyWith<Model, _$NoAuth<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAccessCopyWith<Model, $Res> {
  factory _$$NoAccessCopyWith(
          _$NoAccess<Model> value, $Res Function(_$NoAccess<Model>) then) =
      __$$NoAccessCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({Model data});
}

/// @nodoc
class __$$NoAccessCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$NoAccess<Model>>
    implements _$$NoAccessCopyWith<Model, $Res> {
  __$$NoAccessCopyWithImpl(
      _$NoAccess<Model> _value, $Res Function(_$NoAccess<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NoAccess<Model>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Model,
    ));
  }
}

/// @nodoc

class _$NoAccess<Model>
    with DiagnosticableTreeMixin
    implements NoAccess<Model> {
  const _$NoAccess(this.data);

  @override
  final Model data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkResponse<$Model>.noAccess(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkResponse<$Model>.noAccess'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAccess<Model> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoAccessCopyWith<Model, _$NoAccess<Model>> get copyWith =>
      __$$NoAccessCopyWithImpl<Model, _$NoAccess<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(Model data) invalidParameters,
    required TResult Function(Model data) noAuth,
    required TResult Function(Model data) noAccess,
    required TResult Function(Model data) badRequest,
    required TResult Function(Model data) notFound,
    required TResult Function(Model data) conflict,
    required TResult Function(String message) noData,
  }) {
    return noAccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(Model data)? invalidParameters,
    TResult? Function(Model data)? noAuth,
    TResult? Function(Model data)? noAccess,
    TResult? Function(Model data)? badRequest,
    TResult? Function(Model data)? notFound,
    TResult? Function(Model data)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return noAccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(Model data)? invalidParameters,
    TResult Function(Model data)? noAuth,
    TResult Function(Model data)? noAccess,
    TResult Function(Model data)? badRequest,
    TResult Function(Model data)? notFound,
    TResult Function(Model data)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (noAccess != null) {
      return noAccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return noAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return noAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (noAccess != null) {
      return noAccess(this);
    }
    return orElse();
  }
}

abstract class NoAccess<Model> implements NetworkResponse<Model> {
  const factory NoAccess(final Model data) = _$NoAccess<Model>;

  Model get data;
  @JsonKey(ignore: true)
  _$$NoAccessCopyWith<Model, _$NoAccess<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestCopyWith<Model, $Res> {
  factory _$$BadRequestCopyWith(
          _$BadRequest<Model> value, $Res Function(_$BadRequest<Model>) then) =
      __$$BadRequestCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({Model data});
}

/// @nodoc
class __$$BadRequestCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$BadRequest<Model>>
    implements _$$BadRequestCopyWith<Model, $Res> {
  __$$BadRequestCopyWithImpl(
      _$BadRequest<Model> _value, $Res Function(_$BadRequest<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BadRequest<Model>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Model,
    ));
  }
}

/// @nodoc

class _$BadRequest<Model>
    with DiagnosticableTreeMixin
    implements BadRequest<Model> {
  const _$BadRequest(this.data);

  @override
  final Model data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkResponse<$Model>.badRequest(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkResponse<$Model>.badRequest'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequest<Model> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestCopyWith<Model, _$BadRequest<Model>> get copyWith =>
      __$$BadRequestCopyWithImpl<Model, _$BadRequest<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(Model data) invalidParameters,
    required TResult Function(Model data) noAuth,
    required TResult Function(Model data) noAccess,
    required TResult Function(Model data) badRequest,
    required TResult Function(Model data) notFound,
    required TResult Function(Model data) conflict,
    required TResult Function(String message) noData,
  }) {
    return badRequest(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(Model data)? invalidParameters,
    TResult? Function(Model data)? noAuth,
    TResult? Function(Model data)? noAccess,
    TResult? Function(Model data)? badRequest,
    TResult? Function(Model data)? notFound,
    TResult? Function(Model data)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return badRequest?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(Model data)? invalidParameters,
    TResult Function(Model data)? noAuth,
    TResult Function(Model data)? noAccess,
    TResult Function(Model data)? badRequest,
    TResult Function(Model data)? notFound,
    TResult Function(Model data)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest<Model> implements NetworkResponse<Model> {
  const factory BadRequest(final Model data) = _$BadRequest<Model>;

  Model get data;
  @JsonKey(ignore: true)
  _$$BadRequestCopyWith<Model, _$BadRequest<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundCopyWith<Model, $Res> {
  factory _$$NotFoundCopyWith(
          _$NotFound<Model> value, $Res Function(_$NotFound<Model>) then) =
      __$$NotFoundCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({Model data});
}

/// @nodoc
class __$$NotFoundCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$NotFound<Model>>
    implements _$$NotFoundCopyWith<Model, $Res> {
  __$$NotFoundCopyWithImpl(
      _$NotFound<Model> _value, $Res Function(_$NotFound<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NotFound<Model>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Model,
    ));
  }
}

/// @nodoc

class _$NotFound<Model>
    with DiagnosticableTreeMixin
    implements NotFound<Model> {
  const _$NotFound(this.data);

  @override
  final Model data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkResponse<$Model>.notFound(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkResponse<$Model>.notFound'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFound<Model> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundCopyWith<Model, _$NotFound<Model>> get copyWith =>
      __$$NotFoundCopyWithImpl<Model, _$NotFound<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(Model data) invalidParameters,
    required TResult Function(Model data) noAuth,
    required TResult Function(Model data) noAccess,
    required TResult Function(Model data) badRequest,
    required TResult Function(Model data) notFound,
    required TResult Function(Model data) conflict,
    required TResult Function(String message) noData,
  }) {
    return notFound(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(Model data)? invalidParameters,
    TResult? Function(Model data)? noAuth,
    TResult? Function(Model data)? noAccess,
    TResult? Function(Model data)? badRequest,
    TResult? Function(Model data)? notFound,
    TResult? Function(Model data)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return notFound?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(Model data)? invalidParameters,
    TResult Function(Model data)? noAuth,
    TResult Function(Model data)? noAccess,
    TResult Function(Model data)? badRequest,
    TResult Function(Model data)? notFound,
    TResult Function(Model data)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound<Model> implements NetworkResponse<Model> {
  const factory NotFound(final Model data) = _$NotFound<Model>;

  Model get data;
  @JsonKey(ignore: true)
  _$$NotFoundCopyWith<Model, _$NotFound<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConflictCopyWith<Model, $Res> {
  factory _$$ConflictCopyWith(
          _$Conflict<Model> value, $Res Function(_$Conflict<Model>) then) =
      __$$ConflictCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({Model data});
}

/// @nodoc
class __$$ConflictCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$Conflict<Model>>
    implements _$$ConflictCopyWith<Model, $Res> {
  __$$ConflictCopyWithImpl(
      _$Conflict<Model> _value, $Res Function(_$Conflict<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Conflict<Model>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Model,
    ));
  }
}

/// @nodoc

class _$Conflict<Model>
    with DiagnosticableTreeMixin
    implements Conflict<Model> {
  const _$Conflict(this.data);

  @override
  final Model data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkResponse<$Model>.conflict(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkResponse<$Model>.conflict'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Conflict<Model> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConflictCopyWith<Model, _$Conflict<Model>> get copyWith =>
      __$$ConflictCopyWithImpl<Model, _$Conflict<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(Model data) invalidParameters,
    required TResult Function(Model data) noAuth,
    required TResult Function(Model data) noAccess,
    required TResult Function(Model data) badRequest,
    required TResult Function(Model data) notFound,
    required TResult Function(Model data) conflict,
    required TResult Function(String message) noData,
  }) {
    return conflict(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(Model data)? invalidParameters,
    TResult? Function(Model data)? noAuth,
    TResult? Function(Model data)? noAccess,
    TResult? Function(Model data)? badRequest,
    TResult? Function(Model data)? notFound,
    TResult? Function(Model data)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return conflict?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(Model data)? invalidParameters,
    TResult Function(Model data)? noAuth,
    TResult Function(Model data)? noAccess,
    TResult Function(Model data)? badRequest,
    TResult Function(Model data)? notFound,
    TResult Function(Model data)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class Conflict<Model> implements NetworkResponse<Model> {
  const factory Conflict(final Model data) = _$Conflict<Model>;

  Model get data;
  @JsonKey(ignore: true)
  _$$ConflictCopyWith<Model, _$Conflict<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataCopyWith<Model, $Res> {
  factory _$$NoDataCopyWith(
          _$NoData<Model> value, $Res Function(_$NoData<Model>) then) =
      __$$NoDataCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoDataCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$NoData<Model>>
    implements _$$NoDataCopyWith<Model, $Res> {
  __$$NoDataCopyWithImpl(
      _$NoData<Model> _value, $Res Function(_$NoData<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoData<Model>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoData<Model> with DiagnosticableTreeMixin implements NoData<Model> {
  const _$NoData(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkResponse<$Model>.noData(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkResponse<$Model>.noData'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoData<Model> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDataCopyWith<Model, _$NoData<Model>> get copyWith =>
      __$$NoDataCopyWithImpl<Model, _$NoData<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(Model data) invalidParameters,
    required TResult Function(Model data) noAuth,
    required TResult Function(Model data) noAccess,
    required TResult Function(Model data) badRequest,
    required TResult Function(Model data) notFound,
    required TResult Function(Model data) conflict,
    required TResult Function(String message) noData,
  }) {
    return noData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(Model data)? invalidParameters,
    TResult? Function(Model data)? noAuth,
    TResult? Function(Model data)? noAccess,
    TResult? Function(Model data)? badRequest,
    TResult? Function(Model data)? notFound,
    TResult? Function(Model data)? conflict,
    TResult? Function(String message)? noData,
  }) {
    return noData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(Model data)? invalidParameters,
    TResult Function(Model data)? noAuth,
    TResult Function(Model data)? noAccess,
    TResult Function(Model data)? badRequest,
    TResult Function(Model data)? notFound,
    TResult Function(Model data)? conflict,
    TResult Function(String message)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData<Model> implements NetworkResponse<Model> {
  const factory NoData(final String message) = _$NoData<Model>;

  String get message;
  @JsonKey(ignore: true)
  _$$NoDataCopyWith<Model, _$NoData<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}