// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenInfoDto _$TokenInfoDtoFromJson(Map<String, dynamic> json) => TokenInfoDto(
  tokenId: (json['token_id'] as num).toInt(),
  icon: json['icon'] as String,
);

Map<String, dynamic> _$TokenInfoDtoToJson(TokenInfoDto instance) =>
    <String, dynamic>{'token_id': instance.tokenId, 'icon': instance.icon};
