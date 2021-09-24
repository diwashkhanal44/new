// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ReplyCommentResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReplyCommentResponse _$_$_ReplyCommentResponseFromJson(
    Map<String, dynamic> json) {
  return _$_ReplyCommentResponse(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ReplyCommentResponseToJson(
        _$_ReplyCommentResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    id: json['id'] as int?,
    comment: json['comment'] as String?,
    commenter_name: json['commenter_name'] as String?,
    replier_id: json['replier_id'] as int?,
    commenter_image: json['commenter_image'] as String?,
    parent_id: json['parent_id'] as int?,
    replyUser: json['replyUser'] as String?,
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'commenter_name': instance.commenter_name,
      'replier_id': instance.replier_id,
      'commenter_image': instance.commenter_image,
      'parent_id': instance.parent_id,
      'replyUser': instance.replyUser,
    };
