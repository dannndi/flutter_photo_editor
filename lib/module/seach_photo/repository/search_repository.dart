import 'package:photo_editor/module/home/model/photo/photo_model.dart';

abstract class SearchRepository {
  Future<List<PhotoItemModel>> searchPhotoByKeyword(
    int page,
    int perPage,
    String keyword,
  );
}
