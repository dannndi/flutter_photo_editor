part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(BlocStatus.initial) BlocStatus collectionStatus,
    @Default([]) List<CollectionItemModel> collections,

    ///
    @Default(1) int photosPage,
    @Default(false) bool hasReachMax,
    @Default(BlocStatus.initial) BlocStatus photosStatus,
    @Default([]) List<PhotoItemModel> photos,
  }) = _HomeState;
}
