import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/data/models/change_log/version_info_dto.dart';
import 'package:remote_config/src/domain/entitty/change_log/config_change_log.dart';

part 'config_change_log_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ConfigChangeLogDto extends Equatable {
  const ConfigChangeLogDto({required this.lastBuild, required this.allBuilds});

  final String lastBuild;
  final List<VersionInfoDto> allBuilds;

  ConfigChangeLog toEntity() => ConfigChangeLog(
    lastBuild: lastBuild,
    allBuilds: allBuilds.map((e) => e.toEntity()).toList(),
  );

  factory ConfigChangeLogDto.fromJson(Json json) =>
      _$ConfigChangeLogDtoFromJson(json);

  Json toJson() => _$ConfigChangeLogDtoToJson(this);

  @override
  List<Object?> get props => [lastBuild, allBuilds];
}
