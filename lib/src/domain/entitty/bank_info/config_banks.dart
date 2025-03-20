import 'package:equatable/equatable.dart';
import 'package:remote_config/src/domain/entitty/bank_info/bank_info.dart';

/// Информация о всех банках по [tokenId]
class ConfigBanks extends Equatable {
  const ConfigBanks({required Map<String, BankInfo> banks}) : _banks = banks;

  final Map<String, BankInfo> _banks;

  BankInfo? getBankInfo(int tokenId) {
    final token = tokenId.toString();

    if (!_banks.containsKey(token)) {
      return null;
    }

    return _banks[token]!;
  }

  List<BankInfo> get allBanks => _banks.values.toList();

  @override
  List<Object?> get props => [_banks];
}
