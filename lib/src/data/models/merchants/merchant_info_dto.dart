import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:remote_config/src/core/convertors/string_to_color.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/domain/entitty/merchants/merchant_info.dart';

part 'merchant_info_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantInfoDto extends Equatable {
  const MerchantInfoDto({required this.name, required this.color});

  final String name;
  @StringToColorConverter()
  final Color color;

  MerchantInfo toEntity() => MerchantInfo(name: name, color: color);

  factory MerchantInfoDto.fromJson(Map<String, dynamic> json) =>
      _$MerchantInfoDtoFromJson(json);

  Json toJson() => _$MerchantInfoDtoToJson(this);

  @override
  List<Object?> get props => [name, color];
}
