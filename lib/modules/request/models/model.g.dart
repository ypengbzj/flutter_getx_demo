// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpBinGetResponse _$HttpBinGetResponseFromJson(Map<String, dynamic> json) =>
    HttpBinGetResponse(
      args: json['args'] as Map<String, dynamic>,
      headers: Map<String, String>.from(json['headers'] as Map),
      origin: json['origin'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$HttpBinGetResponseToJson(HttpBinGetResponse instance) =>
    <String, dynamic>{
      'args': instance.args,
      'headers': instance.headers,
      'origin': instance.origin,
      'url': instance.url,
    };
