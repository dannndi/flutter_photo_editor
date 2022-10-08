part of 'edit_photo_cubit.dart';

enum EditState {
  idle,
  layering,
  addingText,
}

@freezed
class EditPhotoState with _$EditPhotoState {
  const factory EditPhotoState({
    @Default(EditState.idle) EditState editState,
    @Default(0) double opacityLayer,
    @Default([]) List<DragableWidget> widgets,
    @Default(DownloadStatus.initial) DownloadStatus downloadStatus,
    @Default(DownloadStatus.initial) DownloadStatus shareStatus,
  }) = _EditPhotoState;
}
