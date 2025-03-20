import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote_config/src/data/models/config_value.dart';
import 'package:remote_config/src/domain/entitty/available_banks/config_available_banks.dart';

abstract class RemoteConfigUC {
  Future<bool> init(RemoteConfigSettings? settings);

  Future<bool> setDefaultValue(List<ConfigValue<dynamic>>? defValues);

  Future<bool> fetchAndActivate();

  Future<ConfigAvailableBanks?> getAvailableBanks();

  Future<void> getBanksInfo();

  Future<void> getTokensInfo();

  Future<void> getChangeLog();
}
