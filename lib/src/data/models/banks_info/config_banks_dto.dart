import 'package:equatable/equatable.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/data/models/banks_info/bank_info_dto.dart';
import 'package:remote_config/src/domain/entitty/bank_info/config_banks.dart';

class ConfigBanksDto extends Equatable {
  const ConfigBanksDto({required this.banks});

  final Map<String, BankInfoDto> banks;

  ConfigBanks toEntity() =>
      ConfigBanks(banks: banks.map((k, v) => MapEntry(k, v.toEntity())));

  factory ConfigBanksDto.fromJson(Json json) => ConfigBanksDto(
    banks: json.map((k, v) => MapEntry(k, BankInfoDto.fromJson(v as Json))),
  );

  @override
  List<Object?> get props => [banks];
}
