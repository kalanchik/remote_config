import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote_config/src/data/models/config_value.dart';

abstract class RemoteConfigRepository {
  Future<void> init(RemoteConfigSettings? settings);

  Future<void> setDefaultValue(List<ConfigValue<dynamic>> defValues);

  Future<void> fetchAndActivate();

  Future<String?> getAvailableBanks();

  Future<String?> getBanksInfo();

  Future<String?> getTokensInfo();

  Future<String?> getChangeLog();
}
