// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  BlocStatus get collectionStatus => throw _privateConstructorUsedError;
  List<CollectionItemModel> get collections =>
      throw _privateConstructorUsedError;

  ///
  int get photosPage => throw _privateConstructorUsedError;
  bool get hasReachMax => throw _privateConstructorUsedError;
  BlocStatus get photosStatus => throw _privateConstructorUsedError;
  List<PhotoItemModel> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {BlocStatus collectionStatus,
      List<CollectionItemModel> collections,
      int photosPage,
      bool hasReachMax,
      BlocStatus photosStatus,
      List<PhotoItemModel> photos});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? collectionStatus = freezed,
    Object? collections = freezed,
    Object? photosPage = freezed,
    Object? hasReachMax = freezed,
    Object? photosStatus = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      collectionStatus: collectionStatus == freezed
          ? _value.collectionStatus
          : collectionStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      collections: collections == freezed
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<CollectionItemModel>,
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
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocStatus collectionStatus,
      List<CollectionItemModel> collections,
      int photosPage,
      bool hasReachMax,
      BlocStatus photosStatus,
      List<PhotoItemModel> photos});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? collectionStatus = freezed,
    Object? collections = freezed,
    Object? photosPage = freezed,
    Object? hasReachMax = freezed,
    Object? photosStatus = freezed,
    Object? photos = freezed,
  }) {
    return _then(_$_HomeState(
      collectionStatus: collectionStatus == freezed
          ? _value.collectionStatus
          : collectionStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      collections: collections == freezed
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<CollectionItemModel>,
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

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.collectionStatus = BlocStatus.initial,
      final List<CollectionItemModel> collections = const [],
      this.photosPage = 1,
      this.hasReachMax = false,
      this.photosStatus = BlocStatus.initial,
      final List<PhotoItemModel> photos = const []})
      : _collections = collections,
        _photos = photos;

  @override
  @JsonKey()
  final BlocStatus collectionStatus;
  final List<CollectionItemModel> _collections;
  @override
  @JsonKey()
  List<CollectionItemModel> get collections {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  ///
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
    return 'HomeState(collectionStatus: $collectionStatus, collections: $collections, photosPage: $photosPage, hasReachMax: $hasReachMax, photosStatus: $photosStatus, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other.collectionStatus, collectionStatus) &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
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
      const DeepCollectionEquality().hash(collectionStatus),
      const DeepCollectionEquality().hash(_collections),
      const DeepCollectionEquality().hash(photosPage),
      const DeepCollectionEquality().hash(hasReachMax),
      const DeepCollectionEquality().hash(photosStatus),
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final BlocStatus collectionStatus,
      final List<CollectionItemModel> collections,
      final int photosPage,
      final bool hasReachMax,
      final BlocStatus photosStatus,
      final List<PhotoItemModel> photos}) = _$_HomeState;

  @override
  BlocStatus get collectionStatus;
  @override
  List<CollectionItemModel> get collections;
  @override

  ///
  int get photosPage;
  @override
  bool get hasReachMax;
  @override
  BlocStatus get photosStatus;
  @override
  List<PhotoItemModel> get photos;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
