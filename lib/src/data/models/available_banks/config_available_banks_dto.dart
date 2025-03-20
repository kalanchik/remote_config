import 'package:equatable/equatable.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/data/models/available_banks/available_bank_dto.dart';
import 'package:remote_config/src/domain/entitty/available_banks/config_available_banks.dart';

class ConfigAvailableBanksDto extends Equatable {
  const ConfigAvailableBanksDto(this.banks);

  final Map<String, List<AvailableBankDto>> banks;

  ConfigAvailableBanks toEntity() => ConfigAvailableBanks(
    banks.map((k, v) => MapEntry(k, v.map((e) => e.toEntity()).toList())),
  );

  factory ConfigAvailableBanksDto.fromJson(Json json) {
    return ConfigAvailableBanksDto(
      json.map(
        (k, v) => MapEntry(
          k,
          (v as List<dynamic>)
              .map((e) => AvailableBankDto.fromJson(e))
              .toList(),
        ),
      ),
    );
  }

  @override
  List<Object?> get props => [banks];
}
