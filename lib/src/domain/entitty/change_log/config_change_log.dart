import 'package:equatable/equatable.dart';
import 'package:remote_config/src/domain/entitty/change_log/version_info.dart';

class ConfigChangeLog extends Equatable {
  const ConfigChangeLog({required this.lastBuild, required this.allBuilds});

  final String lastBuild;
  final List<VersionInfo> allBuilds;

  @override
  List<Object?> get props => [lastBuild, allBuilds];
}
