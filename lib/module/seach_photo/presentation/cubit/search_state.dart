part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default("") String keyword,
    @Default(1) int photosPage,
    @Default(false) bool hasReachMax,
    @Default(BlocStatus.initial) BlocStatus photosStatus,
    @Default([]) List<PhotoItemModel> photos,
  }) = _SearchState;
}
