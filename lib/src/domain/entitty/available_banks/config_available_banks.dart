import 'package:equatable/equatable.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/domain/entitty/available_banks/available_bank.dart';

/// Содержит инофрмацию о регионе и доступных для него банков к добавлению
///
/// [getBanksList] - получить список банков для региона [currency], если такого региона нет, то вернется []
class ConfigAvailableBanks extends Equatable {
  const ConfigAvailableBanks(this._availableBanks);

  final AvailableBanksInfo _availableBanks;

  /// Получить список банков для региона [currency], если такого региона нет, то вернется []
  List<AvailableBank> getBanksList(String currency) {
    if (!_availableBanks.containsKey(currency)) {
      return [];
    }

    return _availableBanks[currency]!;
  }

  /// Получить [Map], где:
  ///
  /// Key - [currency]
  /// 
  /// Value - [List<AvailableBank>] список банков к [currency]
  AvailableBanksInfo get allBanks => _availableBanks;

  @override
  List<Object?> get props => [_availableBanks];
}
