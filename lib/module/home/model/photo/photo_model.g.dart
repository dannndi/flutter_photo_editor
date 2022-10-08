// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoModel _$$_PhotoModelFromJson(Map<String, dynamic> json) =>
    _$_PhotoModel(
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => PhotoItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      totalResult: json['total_results'] as int?,
    );

Map<String, dynamic> _$$_PhotoModelToJson(_$_PhotoModel instance) =>
    <String, dynamic>{
      'photos': instance.photos,
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResult,
    };

_$_PhotoItemModel _$$_PhotoItemModelFromJson(Map<String, dynamic> json) =>
    _$_PhotoItemModel(
      id: json['id'] as int,
      url: json['url'] as String,
      photographer: json['photographer'] as String,
      avgColor: json['avg_color'] as String,
      src: PhotoSrcModel.fromJson(json['src'] as Map<String, dynamic>),
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$$_PhotoItemModelToJson(_$_PhotoItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'photographer': instance.photographer,
      'avg_color': instance.avgColor,
      'src': instance.src,
      'alt': instance.alt,
    };

_$_PhotoSrcModel _$$_PhotoSrcModelFromJson(Map<String, dynamic> json) =>
    _$_PhotoSrcModel(
      original: json['original'] as String,
      large: json['large'] as String,
      portrait: json['portrait'] as String,
    );

Map<String, dynamic> _$$_PhotoSrcModelToJson(_$_PhotoSrcModel instance) =>
    <String, dynamic>{
      'original': instance.original,
      'large': instance.large,
      'portrait': instance.portrait,
    };
