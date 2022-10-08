import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
class PhotoModel with _$PhotoModel {
  const factory PhotoModel({
    /// collections
    @JsonKey(name: "photos") @Default([]) List<PhotoItemModel> photos,

    /// paging property
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "total_results") int? totalResult,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, Object?> json) =>
      _$PhotoModelFromJson(json);
}

@freezed
class PhotoItemModel with _$PhotoItemModel {
  const factory PhotoItemModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "url") required String url,
    @JsonKey(name: "photographer") required String photographer,
    @JsonKey(name: "avg_color") required String avgColor,
    @JsonKey(name: "src") required PhotoSrcModel src,
    @JsonKey(name: "alt") String? alt,
  }) = _PhotoItemModel;

  factory PhotoItemModel.fromJson(Map<String, Object?> json) =>
      _$PhotoItemModelFromJson(json);
}

@freezed
class PhotoSrcModel with _$PhotoSrcModel {
  const factory PhotoSrcModel({
    @JsonKey(name: "original") required String original,
    @JsonKey(name: "large") required String large,
    @JsonKey(name: "portrait") required String portrait,
  }) = _PhotoSrcModel;

  factory PhotoSrcModel.fromJson(Map<String, Object?> json) =>
      _$PhotoSrcModelFromJson(json);
}
