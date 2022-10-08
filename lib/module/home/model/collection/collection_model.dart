import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_model.freezed.dart';
part 'collection_model.g.dart';

@freezed
class CollectionModel with _$CollectionModel {
  const factory CollectionModel({
    @JsonKey(name: "collections")
    @Default([])
        List<CollectionItemModel> collections,
  }) = _CollectionModel;

  factory CollectionModel.fromJson(Map<String, Object?> json) =>
      _$CollectionModelFromJson(json);
}

@freezed
class CollectionItemModel with _$CollectionItemModel {
  const factory CollectionItemModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "title") required String title,
  }) = _CollectionItemModel;

  factory CollectionItemModel.fromJson(Map<String, Object?> json) =>
      _$CollectionItemModelFromJson(json);
}
