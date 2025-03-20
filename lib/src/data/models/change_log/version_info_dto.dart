import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/domain/entitty/change_log/version_info.dart';

part 'version_info_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class VersionInfoDto extends Equatable {
  const VersionInfoDto({
    required this.version,
    required this.isBeta,
    required this.add,
    required this.fix,
    required this.date,
  });

  final String version;
  final bool isBeta;
  final List<String> add;
  final List<String> fix;
  final DateTime date;

  VersionInfo toEntity() => VersionInfo(
    version: version,
    isBeta: isBeta,
    add: add,
    fix: fix,
    date: date,
  );

  factory VersionInfoDto.fromJson(Json json) => _$VersionInfoDtoFromJson(json);

  Json toJson() => _$VersionInfoDtoToJson(this);

  @override
  List<Object?> get props => [version, isBeta, add, fix, date];
}
