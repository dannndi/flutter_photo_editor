// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return _PhotoModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoModel {
  /// collections
  @JsonKey(name: "photos")
  List<PhotoItemModel> get photos => throw _privateConstructorUsedError;

  /// paging property
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  int? get totalResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoModelCopyWith<PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoModelCopyWith<$Res> {
  factory $PhotoModelCopyWith(
          PhotoModel value, $Res Function(PhotoModel) then) =
      _$PhotoModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "photos") List<PhotoItemModel> photos,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "total_results") int? totalResult});
}

/// @nodoc
class _$PhotoModelCopyWithImpl<$Res> implements $PhotoModelCopyWith<$Res> {
  _$PhotoModelCopyWithImpl(this._value, this._then);

  final PhotoModel _value;
  // ignore: unused_field
  final $Res Function(PhotoModel) _then;

  @override
  $Res call({
    Object? photos = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
    Object? totalResult = freezed,
  }) {
    return _then(_value.copyWith(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoItemModel>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResult: totalResult == freezed
          ? _value.totalResult
          : totalResult // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_PhotoModelCopyWith<$Res>
    implements $PhotoModelCopyWith<$Res> {
  factory _$$_PhotoModelCopyWith(
          _$_PhotoModel value, $Res Function(_$_PhotoModel) then) =
      __$$_PhotoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "photos") List<PhotoItemModel> photos,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "total_results") int? totalResult});
}

/// @nodoc
class __$$_PhotoModelCopyWithImpl<$Res> extends _$PhotoModelCopyWithImpl<$Res>
    implements _$$_PhotoModelCopyWith<$Res> {
  __$$_PhotoModelCopyWithImpl(
      _$_PhotoModel _value, $Res Function(_$_PhotoModel) _then)
      : super(_value, (v) => _then(v as _$_PhotoModel));

  @override
  _$_PhotoModel get _value => super._value as _$_PhotoModel;

  @override
  $Res call({
    Object? photos = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
    Object? totalResult = freezed,
  }) {
    return _then(_$_PhotoModel(
      photos: photos == freezed
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoItemModel>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResult: totalResult == freezed
          ? _value.totalResult
          : totalResult // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoModel implements _PhotoModel {
  const _$_PhotoModel(
      {@JsonKey(name: "photos") final List<PhotoItemModel> photos = const [],
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "total_results") this.totalResult})
      : _photos = photos;

  factory _$_PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoModelFromJson(json);

  /// collections
  final List<PhotoItemModel> _photos;

  /// collections
  @override
  @JsonKey(name: "photos")
  List<PhotoItemModel> get photos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  /// paging property
  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "total_results")
  final int? totalResult;

  @override
  String toString() {
    return 'PhotoModel(photos: $photos, page: $page, perPage: $perPage, totalResult: $totalResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoModel &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality()
                .equals(other.totalResult, totalResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(totalResult));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoModelCopyWith<_$_PhotoModel> get copyWith =>
      __$$_PhotoModelCopyWithImpl<_$_PhotoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoModelToJson(
      this,
    );
  }
}

abstract class _PhotoModel implements PhotoModel {
  const factory _PhotoModel(
      {@JsonKey(name: "photos") final List<PhotoItemModel> photos,
      @JsonKey(name: "page") final int? page,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "total_results") final int? totalResult}) = _$_PhotoModel;

  factory _PhotoModel.fromJson(Map<String, dynamic> json) =
      _$_PhotoModel.fromJson;

  @override

  /// collections
  @JsonKey(name: "photos")
  List<PhotoItemModel> get photos;
  @override

  /// paging property
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "total_results")
  int? get totalResult;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoModelCopyWith<_$_PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoItemModel _$PhotoItemModelFromJson(Map<String, dynamic> json) {
  return _PhotoItemModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoItemModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "photographer")
  String get photographer => throw _privateConstructorUsedError;
  @JsonKey(name: "avg_color")
  String get avgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "src")
  PhotoSrcModel get src => throw _privateConstructorUsedError;
  @JsonKey(name: "alt")
  String? get alt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoItemModelCopyWith<PhotoItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoItemModelCopyWith<$Res> {
  factory $PhotoItemModelCopyWith(
          PhotoItemModel value, $Res Function(PhotoItemModel) then) =
      _$PhotoItemModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "photographer") String photographer,
      @JsonKey(name: "avg_color") String avgColor,
      @JsonKey(name: "src") PhotoSrcModel src,
      @JsonKey(name: "alt") String? alt});

  $PhotoSrcModelCopyWith<$Res> get src;
}

/// @nodoc
class _$PhotoItemModelCopyWithImpl<$Res>
    implements $PhotoItemModelCopyWith<$Res> {
  _$PhotoItemModelCopyWithImpl(this._value, this._then);

  final PhotoItemModel _value;
  // ignore: unused_field
  final $Res Function(PhotoItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? avgColor = freezed,
    Object? src = freezed,
    Object? alt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: photographer == freezed
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      avgColor: avgColor == freezed
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String,
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as PhotoSrcModel,
      alt: alt == freezed
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PhotoSrcModelCopyWith<$Res> get src {
    return $PhotoSrcModelCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value));
    });
  }
}

/// @nodoc
abstract class _$$_PhotoItemModelCopyWith<$Res>
    implements $PhotoItemModelCopyWith<$Res> {
  factory _$$_PhotoItemModelCopyWith(
          _$_PhotoItemModel value, $Res Function(_$_PhotoItemModel) then) =
      __$$_PhotoItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "photographer") String photographer,
      @JsonKey(name: "avg_color") String avgColor,
      @JsonKey(name: "src") PhotoSrcModel src,
      @JsonKey(name: "alt") String? alt});

  @override
  $PhotoSrcModelCopyWith<$Res> get src;
}

/// @nodoc
class __$$_PhotoItemModelCopyWithImpl<$Res>
    extends _$PhotoItemModelCopyWithImpl<$Res>
    implements _$$_PhotoItemModelCopyWith<$Res> {
  __$$_PhotoItemModelCopyWithImpl(
      _$_PhotoItemModel _value, $Res Function(_$_PhotoItemModel) _then)
      : super(_value, (v) => _then(v as _$_PhotoItemModel));

  @override
  _$_PhotoItemModel get _value => super._value as _$_PhotoItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? avgColor = freezed,
    Object? src = freezed,
    Object? alt = freezed,
  }) {
    return _then(_$_PhotoItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: photographer == freezed
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      avgColor: avgColor == freezed
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String,
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as PhotoSrcModel,
      alt: alt == freezed
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoItemModel implements _PhotoItemModel {
  const _$_PhotoItemModel(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "url") required this.url,
      @JsonKey(name: "photographer") required this.photographer,
      @JsonKey(name: "avg_color") required this.avgColor,
      @JsonKey(name: "src") required this.src,
      @JsonKey(name: "alt") this.alt});

  factory _$_PhotoItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoItemModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "url")
  final String url;
  @override
  @JsonKey(name: "photographer")
  final String photographer;
  @override
  @JsonKey(name: "avg_color")
  final String avgColor;
  @override
  @JsonKey(name: "src")
  final PhotoSrcModel src;
  @override
  @JsonKey(name: "alt")
  final String? alt;

  @override
  String toString() {
    return 'PhotoItemModel(id: $id, url: $url, photographer: $photographer, avgColor: $avgColor, src: $src, alt: $alt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.photographer, photographer) &&
            const DeepCollectionEquality().equals(other.avgColor, avgColor) &&
            const DeepCollectionEquality().equals(other.src, src) &&
            const DeepCollectionEquality().equals(other.alt, alt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(photographer),
      const DeepCollectionEquality().hash(avgColor),
      const DeepCollectionEquality().hash(src),
      const DeepCollectionEquality().hash(alt));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoItemModelCopyWith<_$_PhotoItemModel> get copyWith =>
      __$$_PhotoItemModelCopyWithImpl<_$_PhotoItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoItemModelToJson(
      this,
    );
  }
}

abstract class _PhotoItemModel implements PhotoItemModel {
  const factory _PhotoItemModel(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "url") required final String url,
      @JsonKey(name: "photographer") required final String photographer,
      @JsonKey(name: "avg_color") required final String avgColor,
      @JsonKey(name: "src") required final PhotoSrcModel src,
      @JsonKey(name: "alt") final String? alt}) = _$_PhotoItemModel;

  factory _PhotoItemModel.fromJson(Map<String, dynamic> json) =
      _$_PhotoItemModel.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(name: "photographer")
  String get photographer;
  @override
  @JsonKey(name: "avg_color")
  String get avgColor;
  @override
  @JsonKey(name: "src")
  PhotoSrcModel get src;
  @override
  @JsonKey(name: "alt")
  String? get alt;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoItemModelCopyWith<_$_PhotoItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoSrcModel _$PhotoSrcModelFromJson(Map<String, dynamic> json) {
  return _PhotoSrcModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoSrcModel {
  @JsonKey(name: "original")
  String get original => throw _privateConstructorUsedError;
  @JsonKey(name: "large")
  String get large => throw _privateConstructorUsedError;
  @JsonKey(name: "portrait")
  String get portrait => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoSrcModelCopyWith<PhotoSrcModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoSrcModelCopyWith<$Res> {
  factory $PhotoSrcModelCopyWith(
          PhotoSrcModel value, $Res Function(PhotoSrcModel) then) =
      _$PhotoSrcModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "original") String original,
      @JsonKey(name: "large") String large,
      @JsonKey(name: "portrait") String portrait});
}

/// @nodoc
class _$PhotoSrcModelCopyWithImpl<$Res>
    implements $PhotoSrcModelCopyWith<$Res> {
  _$PhotoSrcModelCopyWithImpl(this._value, this._then);

  final PhotoSrcModel _value;
  // ignore: unused_field
  final $Res Function(PhotoSrcModel) _then;

  @override
  $Res call({
    Object? original = freezed,
    Object? large = freezed,
    Object? portrait = freezed,
  }) {
    return _then(_value.copyWith(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: portrait == freezed
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PhotoSrcModelCopyWith<$Res>
    implements $PhotoSrcModelCopyWith<$Res> {
  factory _$$_PhotoSrcModelCopyWith(
          _$_PhotoSrcModel value, $Res Function(_$_PhotoSrcModel) then) =
      __$$_PhotoSrcModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "original") String original,
      @JsonKey(name: "large") String large,
      @JsonKey(name: "portrait") String portrait});
}

/// @nodoc
class __$$_PhotoSrcModelCopyWithImpl<$Res>
    extends _$PhotoSrcModelCopyWithImpl<$Res>
    implements _$$_PhotoSrcModelCopyWith<$Res> {
  __$$_PhotoSrcModelCopyWithImpl(
      _$_PhotoSrcModel _value, $Res Function(_$_PhotoSrcModel) _then)
      : super(_value, (v) => _then(v as _$_PhotoSrcModel));

  @override
  _$_PhotoSrcModel get _value => super._value as _$_PhotoSrcModel;

  @override
  $Res call({
    Object? original = freezed,
    Object? large = freezed,
    Object? portrait = freezed,
  }) {
    return _then(_$_PhotoSrcModel(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: portrait == freezed
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoSrcModel implements _PhotoSrcModel {
  const _$_PhotoSrcModel(
      {@JsonKey(name: "original") required this.original,
      @JsonKey(name: "large") required this.large,
      @JsonKey(name: "portrait") required this.portrait});

  factory _$_PhotoSrcModel.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoSrcModelFromJson(json);

  @override
  @JsonKey(name: "original")
  final String original;
  @override
  @JsonKey(name: "large")
  final String large;
  @override
  @JsonKey(name: "portrait")
  final String portrait;

  @override
  String toString() {
    return 'PhotoSrcModel(original: $original, large: $large, portrait: $portrait)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoSrcModel &&
            const DeepCollectionEquality().equals(other.original, original) &&
            const DeepCollectionEquality().equals(other.large, large) &&
            const DeepCollectionEquality().equals(other.portrait, portrait));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(original),
      const DeepCollectionEquality().hash(large),
      const DeepCollectionEquality().hash(portrait));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoSrcModelCopyWith<_$_PhotoSrcModel> get copyWith =>
      __$$_PhotoSrcModelCopyWithImpl<_$_PhotoSrcModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoSrcModelToJson(
      this,
    );
  }
}

abstract class _PhotoSrcModel implements PhotoSrcModel {
  const factory _PhotoSrcModel(
          {@JsonKey(name: "original") required final String original,
          @JsonKey(name: "large") required final String large,
          @JsonKey(name: "portrait") required final String portrait}) =
      _$_PhotoSrcModel;

  factory _PhotoSrcModel.fromJson(Map<String, dynamic> json) =
      _$_PhotoSrcModel.fromJson;

  @override
  @JsonKey(name: "original")
  String get original;
  @override
  @JsonKey(name: "large")
  String get large;
  @override
  @JsonKey(name: "portrait")
  String get portrait;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoSrcModelCopyWith<_$_PhotoSrcModel> get copyWith =>
      throw _privateConstructorUsedError;
}
