// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewCommentResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewCommentResponse _$_$_NewCommentResponseFromJson(
    Map<String, dynamic> json) {
  return _$_NewCommentResponse(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NewCommentResponseToJson(
        _$_NewCommentResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    id: json['id'] as int?,
    comment: json['comment'] as String?,
    commenter_name: json['commenter_name'] as String?,
    replies_count: json['replies_count'] as int?,
    commenter_image: json['commenter_image'] as String?,
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'commenter_name': instance.commenter_name,
      'replies_count': instance.replies_count,
      'commenter_image': instance.commenter_image,
    };
