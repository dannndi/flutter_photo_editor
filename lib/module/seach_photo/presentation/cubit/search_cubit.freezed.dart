// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  String get keyword => throw _privateConstructorUsedError;
  int get photosPage => throw _privateConstructorUsedError;
  bool get hasReachMax => throw _privateConstructorUsedError;
  BlocStatus get photosStatus => throw _privateConstructorUsedError;
  List<PhotoItemModel> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {String keyword,
      int photosPage,
      bool hasReachMax,
      BlocStatus photosStatus,
      List<PhotoItemModel> photos});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? photosPage = freezed,
    Object? hasReachMax = freezed,
    Object? photosStatus = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      photosPage: photosPage == freezed
          ? _value.photosPage
          : photosPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachMax: hasReachMax == freezed
          ? _value.hasReachMax
          : hasReachMax // ignore: cast_nullable_to_non_nullable
              as bool,
      photosStatus: photosStatus == freezed
          ? _value.photosStatus
          : photosStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String keyword,
      int photosPage,
      bool hasReachMax,
      BlocStatus photosStatus,
      List<PhotoItemModel> photos});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? photosPage = freezed,
    Object? hasReachMax = freezed,
    Object? photosStatus = freezed,
    Object? photos = freezed,
  }) {
    return _then(_$_SearchState(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      photosPage: photosPage == freezed
          ? _value.photosPage
          : photosPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachMax: hasReachMax == freezed
          ? _value.hasReachMax
          : hasReachMax // ignore: cast_nullable_to_non_nullable
              as bool,
      photosStatus: photosStatus == freezed
          ? _value.photosStatus
          : photosStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      photos: photos == freezed
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoItemModel>,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {this.keyword = "",
      this.photosPage = 1,
      this.hasReachMax = false,
      this.photosStatus = BlocStatus.initial,
      final List<PhotoItemModel> photos = const []})
      : _photos = photos;

  @override
  @JsonKey()
  final String keyword;
  @override
  @JsonKey()
  final int photosPage;
  @override
  @JsonKey()
  final bool hasReachMax;
  @override
  @JsonKey()
  final BlocStatus photosStatus;
  final List<PhotoItemModel> _photos;
  @override
  @JsonKey()
  List<PhotoItemModel> get photos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'SearchState(keyword: $keyword, photosPage: $photosPage, hasReachMax: $hasReachMax, photosStatus: $photosStatus, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality().equals(other.keyword, keyword) &&
            const DeepCollectionEquality()
                .equals(other.photosPage, photosPage) &&
            const DeepCollectionEquality()
                .equals(other.hasReachMax, hasReachMax) &&
            const DeepCollectionEquality()
                .equals(other.photosStatus, photosStatus) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(keyword),
      const DeepCollectionEquality().hash(photosPage),
      const DeepCollectionEquality().hash(hasReachMax),
      const DeepCollectionEquality().hash(photosStatus),
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final String keyword,
      final int photosPage,
      final bool hasReachMax,
      final BlocStatus photosStatus,
      final List<PhotoItemModel> photos}) = _$_SearchState;

  @override
  String get keyword;
  @override
  int get photosPage;
  @override
  bool get hasReachMax;
  @override
  BlocStatus get photosStatus;
  @override
  List<PhotoItemModel> get photos;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
