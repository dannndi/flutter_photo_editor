import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_editor/core/bloc/bloc_status.dart';
import 'package:photo_editor/module/home/model/collection/collection_model.dart';
import 'package:photo_editor/module/home/model/photo/photo_model.dart';
import 'package:photo_editor/module/home/repository/home_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository repo;
  HomeCubit({
    required this.repo,
  }) : super(const HomeState());

  void getCollection({
    bool showLoading = true,
  }) async {
    if (showLoading) emit(state.copyWith(collectionStatus: BlocStatus.loading));

    try {
      final result = await repo.getCollections(30);
      if (!showLoading) {
        emit(state.copyWith(collectionStatus: BlocStatus.loading));
      }
      emit(state.copyWith(
        collectionStatus: BlocStatus.success,
        collections: result,
      ));
    } catch (e) {
      if (!showLoading) {
        emit(state.copyWith(collectionStatus: BlocStatus.loading));
      }
      emit(state.copyWith(collectionStatus: BlocStatus.error));
    }
  }

  void getPhotos({
    bool showLoading = true,
    int page = 1,
  }) async {
    if (showLoading) emit(state.copyWith(photosStatus: BlocStatus.loading));
    try {
      final result = await repo.getPhotos(page, 24);

      if (page == 1) {
        emit(state.copyWith(
          photosPage: page,
          hasReachMax: result.isEmpty,
          photosStatus: BlocStatus.success,
          photos: result,
        ));

        return;
      }

      emit(state.copyWith(
        photosPage: page,
        hasReachMax: result.isEmpty,
        photosStatus: BlocStatus.success,
        photos: List.from(state.photos)..addAll(result),
      ));
    } catch (e) {
      if (!showLoading) {
        emit(state.copyWith(photosStatus: BlocStatus.loading));
      }
      emit(state.copyWith(photosStatus: BlocStatus.error));
    }
  }

  void getNextPhotos() {
    final nextPage = state.photosPage + 1;
    getPhotos(showLoading: false, page: nextPage);
  }
}
