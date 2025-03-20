import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/domain/entitty/tokens_info/token_info.dart';

part 'token_info_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TokenInfoDto extends Equatable {
  const TokenInfoDto({required this.tokenId, required this.icon});

  final int tokenId;
  final String icon;

  TokenInfo toEntity() => TokenInfo(tokenId: tokenId, icon: icon);

  factory TokenInfoDto.fromJson(Json json) => _$TokenInfoDtoFromJson(json);

  Json toJson() => _$TokenInfoDtoToJson(this);

  @override
  List<Object?> get props => [tokenId, icon];
}
