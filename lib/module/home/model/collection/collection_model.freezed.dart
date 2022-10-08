// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollectionModel _$CollectionModelFromJson(Map<String, dynamic> json) {
  return _CollectionModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionModel {
  @JsonKey(name: "collections")
  List<CollectionItemModel> get collections =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionModelCopyWith<CollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionModelCopyWith<$Res> {
  factory $CollectionModelCopyWith(
          CollectionModel value, $Res Function(CollectionModel) then) =
      _$CollectionModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "collections") List<CollectionItemModel> collections});
}

/// @nodoc
class _$CollectionModelCopyWithImpl<$Res>
    implements $CollectionModelCopyWith<$Res> {
  _$CollectionModelCopyWithImpl(this._value, this._then);

  final CollectionModel _value;
  // ignore: unused_field
  final $Res Function(CollectionModel) _then;

  @override
  $Res call({
    Object? collections = freezed,
  }) {
    return _then(_value.copyWith(
      collections: collections == freezed
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<CollectionItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_CollectionModelCopyWith<$Res>
    implements $CollectionModelCopyWith<$Res> {
  factory _$$_CollectionModelCopyWith(
          _$_CollectionModel value, $Res Function(_$_CollectionModel) then) =
      __$$_CollectionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "collections") List<CollectionItemModel> collections});
}

/// @nodoc
class __$$_CollectionModelCopyWithImpl<$Res>
    extends _$CollectionModelCopyWithImpl<$Res>
    implements _$$_CollectionModelCopyWith<$Res> {
  __$$_CollectionModelCopyWithImpl(
      _$_CollectionModel _value, $Res Function(_$_CollectionModel) _then)
      : super(_value, (v) => _then(v as _$_CollectionModel));

  @override
  _$_CollectionModel get _value => super._value as _$_CollectionModel;

  @override
  $Res call({
    Object? collections = freezed,
  }) {
    return _then(_$_CollectionModel(
      collections: collections == freezed
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<CollectionItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CollectionModel implements _CollectionModel {
  const _$_CollectionModel(
      {@JsonKey(name: "collections")
          final List<CollectionItemModel> collections = const []})
      : _collections = collections;

  factory _$_CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionModelFromJson(json);

  final List<CollectionItemModel> _collections;
  @override
  @JsonKey(name: "collections")
  List<CollectionItemModel> get collections {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  @override
  String toString() {
    return 'CollectionModel(collections: $collections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionModel &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_collections));

  @JsonKey(ignore: true)
  @override
  _$$_CollectionModelCopyWith<_$_CollectionModel> get copyWith =>
      __$$_CollectionModelCopyWithImpl<_$_CollectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionModelToJson(
      this,
    );
  }
}

abstract class _CollectionModel implements CollectionModel {
  const factory _CollectionModel(
      {@JsonKey(name: "collections")
          final List<CollectionItemModel> collections}) = _$_CollectionModel;

  factory _CollectionModel.fromJson(Map<String, dynamic> json) =
      _$_CollectionModel.fromJson;

  @override
  @JsonKey(name: "collections")
  List<CollectionItemModel> get collections;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionModelCopyWith<_$_CollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectionItemModel _$CollectionItemModelFromJson(Map<String, dynamic> json) {
  return _CollectionItemModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionItemModel {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionItemModelCopyWith<CollectionItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionItemModelCopyWith<$Res> {
  factory $CollectionItemModelCopyWith(
          CollectionItemModel value, $Res Function(CollectionItemModel) then) =
      _$CollectionItemModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String id, @JsonKey(name: "title") String title});
}

/// @nodoc
class _$CollectionItemModelCopyWithImpl<$Res>
    implements $CollectionItemModelCopyWith<$Res> {
  _$CollectionItemModelCopyWithImpl(this._value, this._then);

  final CollectionItemModel _value;
  // ignore: unused_field
  final $Res Function(CollectionItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CollectionItemModelCopyWith<$Res>
    implements $CollectionItemModelCopyWith<$Res> {
  factory _$$_CollectionItemModelCopyWith(_$_CollectionItemModel value,
          $Res Function(_$_CollectionItemModel) then) =
      __$$_CollectionItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String id, @JsonKey(name: "title") String title});
}

/// @nodoc
class __$$_CollectionItemModelCopyWithImpl<$Res>
    extends _$CollectionItemModelCopyWithImpl<$Res>
    implements _$$_CollectionItemModelCopyWith<$Res> {
  __$$_CollectionItemModelCopyWithImpl(_$_CollectionItemModel _value,
      $Res Function(_$_CollectionItemModel) _then)
      : super(_value, (v) => _then(v as _$_CollectionItemModel));

  @override
  _$_CollectionItemModel get _value => super._value as _$_CollectionItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_CollectionItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CollectionItemModel implements _CollectionItemModel {
  const _$_CollectionItemModel(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "title") required this.title});

  factory _$_CollectionItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionItemModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "title")
  final String title;

  @override
  String toString() {
    return 'CollectionItemModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_CollectionItemModelCopyWith<_$_CollectionItemModel> get copyWith =>
      __$$_CollectionItemModelCopyWithImpl<_$_CollectionItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionItemModelToJson(
      this,
    );
  }
}

abstract class _CollectionItemModel implements CollectionItemModel {
  const factory _CollectionItemModel(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "title") required final String title}) =
      _$_CollectionItemModel;

  factory _CollectionItemModel.fromJson(Map<String, dynamic> json) =
      _$_CollectionItemModel.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionItemModelCopyWith<_$_CollectionItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
