import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote_config/src/data/models/config_value.dart';
import 'package:remote_config/src/domain/entitty/available_banks/config_available_banks.dart';
import 'package:remote_config/src/domain/entitty/bank_info/config_banks.dart';
import 'package:remote_config/src/domain/entitty/change_log/config_change_log.dart';
import 'package:remote_config/src/domain/entitty/merchants/config_merchants.dart';
import 'package:remote_config/src/domain/entitty/tokens_info/config_tokens.dart';

abstract class RemoteConfigUC {
  Future<bool> init(RemoteConfigSettings? settings);

  Future<bool> setDefaultValue(List<ConfigValue<dynamic>>? defValues);

  Future<bool> fetchAndActivate();

  Future<ConfigAvailableBanks> getAvailableBanks();

  Future<ConfigBanks> getBanksInfo();

  Future<ConfigTokens> getTokensInfo();

  Future<ConfigChangeLog> getChangeLog();

  Future<ConfigMerchants> getMerchants();
}
