// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionInfoDto _$VersionInfoDtoFromJson(Map<String, dynamic> json) =>
    VersionInfoDto(
      version: json['version'] as String,
      isBeta: json['is_beta'] as bool,
      add: (json['add'] as List<dynamic>).map((e) => e as String).toList(),
      fix: (json['fix'] as List<dynamic>).map((e) => e as String).toList(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$VersionInfoDtoToJson(VersionInfoDto instance) =>
    <String, dynamic>{
      'version': instance.version,
      'is_beta': instance.isBeta,
      'add': instance.add,
      'fix': instance.fix,
      'date': instance.date.toIso8601String(),
    };
