// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_change_log_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigChangeLogDto _$ConfigChangeLogDtoFromJson(Map<String, dynamic> json) =>
    ConfigChangeLogDto(
      lastBuild: json['last_build'] as String,
      allBuilds:
          (json['all_builds'] as List<dynamic>)
              .map((e) => VersionInfoDto.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ConfigChangeLogDtoToJson(ConfigChangeLogDto instance) =>
    <String, dynamic>{
      'last_build': instance.lastBuild,
      'all_builds': instance.allBuilds,
    };
