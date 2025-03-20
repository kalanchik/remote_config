import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote_config/src/data/models/config_value.dart';
import 'package:remote_config/src/domain/repository/remote_config_repository.dart';

class RemoteConfigRepositoryImpl implements RemoteConfigRepository {
  RemoteConfigRepositoryImpl(this._instance);

  final FirebaseRemoteConfig _instance;

  static const String _availableBanks = "available_banks";
  static const String _bankInfo = "bank_info";
  static const String _tokensInfo = "tokens_info";
  static const String _changeLogs = "change_logs";
  static const String _crmMerchants = "crm_merch";

  @override
  Future<void> init(RemoteConfigSettings? settings) async {
    await _instance.setConfigSettings(
      settings ??
          RemoteConfigSettings(
            fetchTimeout: const Duration(minutes: 1),
            minimumFetchInterval: const Duration(hours: 1),
          ),
    );
  }

  @override
  Future<void> setDefaultValue(List<ConfigValue<dynamic>> defValues) async {
    if (defValues.isEmpty) return;

    final entries = defValues.map((e) => MapEntry(e.key, e.value));

    final Map<String, dynamic> result = {};

    result.addEntries(entries);

    await _instance.setDefaults(result);
  }

  @override
  Future<void> fetchAndActivate() async {
    await _instance.fetchAndActivate();
  }

  @override
  Future<String?> getAvailableBanks() async {
    return _instance.getString(_availableBanks);
  }

  @override
  Future<String?> getBanksInfo() async {
    return _instance.getString(_bankInfo);
  }

  @override
  Future<String?> getTokensInfo() async {
    return _instance.getString(_tokensInfo);
  }

  @override
  Future<String?> getChangeLog() async {
    return _instance.getString(_changeLogs);
  }

  @override
  Future<String?> getMerchants() async {
    return _instance.getString(_crmMerchants);
  }
}
