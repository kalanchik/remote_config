import 'package:equatable/equatable.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/data/models/merchants/merchant_info_dto.dart';
import 'package:remote_config/src/domain/entitty/merchants/config_merchants.dart';

class ConfigMerchantsDto extends Equatable {
  final Map<String, MerchantInfoDto> merchants;

  const ConfigMerchantsDto({required this.merchants});

  ConfigMerchants toEntity() =>
      ConfigMerchants(merchants.map((k, v) => MapEntry(k, v.toEntity())));

  factory ConfigMerchantsDto.fromJson(Json json) => ConfigMerchantsDto(
    merchants: json.map((k, v) => MapEntry(k, MerchantInfoDto.fromJson(v))),
  );

  @override
  List<Object?> get props => [merchants];
}
