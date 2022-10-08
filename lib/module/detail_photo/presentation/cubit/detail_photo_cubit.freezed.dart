// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_photo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailPhotoState {
  DownloadStatus get downloadStatus => throw _privateConstructorUsedError;
  DownloadStatus get shareStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailPhotoStateCopyWith<DetailPhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPhotoStateCopyWith<$Res> {
  factory $DetailPhotoStateCopyWith(
          DetailPhotoState value, $Res Function(DetailPhotoState) then) =
      _$DetailPhotoStateCopyWithImpl<$Res>;
  $Res call({DownloadStatus downloadStatus, DownloadStatus shareStatus});
}

/// @nodoc
class _$DetailPhotoStateCopyWithImpl<$Res>
    implements $DetailPhotoStateCopyWith<$Res> {
  _$DetailPhotoStateCopyWithImpl(this._value, this._then);

  final DetailPhotoState _value;
  // ignore: unused_field
  final $Res Function(DetailPhotoState) _then;

  @override
  $Res call({
    Object? downloadStatus = freezed,
    Object? shareStatus = freezed,
  }) {
    return _then(_value.copyWith(
      downloadStatus: downloadStatus == freezed
          ? _value.downloadStatus
          : downloadStatus // ignore: cast_nullable_to_non_nullable
              as DownloadStatus,
      shareStatus: shareStatus == freezed
          ? _value.shareStatus
          : shareStatus // ignore: cast_nullable_to_non_nullable
              as DownloadStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_DetailPhotoStateCopyWith<$Res>
    implements $DetailPhotoStateCopyWith<$Res> {
  factory _$$_DetailPhotoStateCopyWith(
          _$_DetailPhotoState value, $Res Function(_$_DetailPhotoState) then) =
      __$$_DetailPhotoStateCopyWithImpl<$Res>;
  @override
  $Res call({DownloadStatus downloadStatus, DownloadStatus shareStatus});
}

/// @nodoc
class __$$_DetailPhotoStateCopyWithImpl<$Res>
    extends _$DetailPhotoStateCopyWithImpl<$Res>
    implements _$$_DetailPhotoStateCopyWith<$Res> {
  __$$_DetailPhotoStateCopyWithImpl(
      _$_DetailPhotoState _value, $Res Function(_$_DetailPhotoState) _then)
      : super(_value, (v) => _then(v as _$_DetailPhotoState));

  @override
  _$_DetailPhotoState get _value => super._value as _$_DetailPhotoState;

  @override
  $Res call({
    Object? downloadStatus = freezed,
    Object? shareStatus = freezed,
  }) {
    return _then(_$_DetailPhotoState(
      downloadStatus: downloadStatus == freezed
          ? _value.downloadStatus
          : downloadStatus // ignore: cast_nullable_to_non_nullable
              as DownloadStatus,
      shareStatus: shareStatus == freezed
          ? _value.shareStatus
          : shareStatus // ignore: cast_nullable_to_non_nullable
              as DownloadStatus,
    ));
  }
}

/// @nodoc

class _$_DetailPhotoState implements _DetailPhotoState {
  const _$_DetailPhotoState(
      {this.downloadStatus = DownloadStatus.initial,
      this.shareStatus = DownloadStatus.initial});

  @override
  @JsonKey()
  final DownloadStatus downloadStatus;
  @override
  @JsonKey()
  final DownloadStatus shareStatus;

  @override
  String toString() {
    return 'DetailPhotoState(downloadStatus: $downloadStatus, shareStatus: $shareStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailPhotoState &&
            const DeepCollectionEquality()
                .equals(other.downloadStatus, downloadStatus) &&
            const DeepCollectionEquality()
                .equals(other.shareStatus, shareStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(downloadStatus),
      const DeepCollectionEquality().hash(shareStatus));

  @JsonKey(ignore: true)
  @override
  _$$_DetailPhotoStateCopyWith<_$_DetailPhotoState> get copyWith =>
      __$$_DetailPhotoStateCopyWithImpl<_$_DetailPhotoState>(this, _$identity);
}

abstract class _DetailPhotoState implements DetailPhotoState {
  const factory _DetailPhotoState(
      {final DownloadStatus downloadStatus,
      final DownloadStatus shareStatus}) = _$_DetailPhotoState;

  @override
  DownloadStatus get downloadStatus;
  @override
  DownloadStatus get shareStatus;
  @override
  @JsonKey(ignore: true)
  _$$_DetailPhotoStateCopyWith<_$_DetailPhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}
