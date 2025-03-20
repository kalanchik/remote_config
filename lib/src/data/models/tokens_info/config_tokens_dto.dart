import 'package:equatable/equatable.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/data/models/tokens_info/token_info_dto.dart';
import 'package:remote_config/src/domain/entitty/tokens_info/config_tokens.dart';

class ConfigTokensDto extends Equatable {
  const ConfigTokensDto(this.tokens);

  final Map<String, TokenInfoDto> tokens;

  ConfigTokens toEntity() =>
      ConfigTokens(tokens.map((k, v) => MapEntry(k, v.toEntity())));

  factory ConfigTokensDto.fromJson(Json json) => ConfigTokensDto(
    json.map((k, v) => MapEntry(k, TokenInfoDto.fromJson(v))),
  );

  @override
  List<Object?> get props => [tokens];
}
