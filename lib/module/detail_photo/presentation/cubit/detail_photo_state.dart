part of 'detail_photo_cubit.dart';

@freezed
class DetailPhotoState with _$DetailPhotoState {
  const factory DetailPhotoState({
    @Default(DownloadStatus.initial) DownloadStatus downloadStatus,
    @Default(DownloadStatus.initial) DownloadStatus shareStatus,
  }) = _DetailPhotoState;
}
