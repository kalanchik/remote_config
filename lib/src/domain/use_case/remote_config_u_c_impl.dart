import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/data/models/available_banks/config_available_banks_dto.dart';
import 'package:remote_config/src/data/models/banks_info/config_banks_dto.dart';
import 'package:remote_config/src/data/models/change_log/config_change_log_dto.dart';
import 'package:remote_config/src/data/models/config_value.dart';
import 'package:remote_config/src/data/models/merchants/config_merchants_dto.dart';
import 'package:remote_config/src/data/models/tokens_info/config_tokens_dto.dart';
import 'package:remote_config/src/domain/entitty/available_banks/config_available_banks.dart';
import 'package:remote_config/src/domain/entitty/bank_info/config_banks.dart';
import 'package:remote_config/src/domain/entitty/change_log/config_change_log.dart';
import 'package:remote_config/src/domain/entitty/merchants/config_merchants.dart';
import 'package:remote_config/src/domain/entitty/tokens_info/config_tokens.dart';
import 'package:remote_config/src/domain/repository/remote_config_repository.dart';
import 'package:remote_config/src/domain/use_case/remote_config_u_c.dart';

class RemoteConfigUCImpl implements RemoteConfigUC {
  final RemoteConfigRepository _repository;

  RemoteConfigUCImpl(this._repository);

  @override
  Future<ConfigAvailableBanks> getAvailableBanks() async {
    try {
      final response = await _repository.getAvailableBanks();

      if (response == null || response.isEmpty) return ConfigAvailableBanks({});

      final json = jsonDecode(response) as Json;

      final dto = ConfigAvailableBanksDto.fromJson(json);

      return dto.toEntity();
    } catch (e) {
      return ConfigAvailableBanks({});
    }
  }

  @override
  Future<ConfigBanks> getBanksInfo() async {
    try {
      final response = await _repository.getBanksInfo();

      if (response == null) return ConfigBanks(banks: {});

      final data = jsonDecode(response) as Json;

      final dto = ConfigBanksDto.fromJson(data);

      return dto.toEntity();
    } catch (e) {
      return ConfigBanks(banks: {});
    }
  }

  @override
  Future<ConfigChangeLog> getChangeLog() async {
    try {
      final response = await _repository.getChangeLog();

      if (response == null || response.isEmpty) {
        return ConfigChangeLog(lastBuild: "1.0.0", allBuilds: []);
      }

      final data = jsonDecode(response) as Json;

      final dto = ConfigChangeLogDto.fromJson(data);

      return dto.toEntity();
    } catch (e) {
      return ConfigChangeLog(lastBuild: "1.0.0", allBuilds: []);
    }
  }

  @override
  Future<ConfigTokens> getTokensInfo() async {
    try {
      final response = await _repository.getTokensInfo();

      if (response == null || response.isEmpty) return ConfigTokens({});

      final data = jsonDecode(response) as Json;

      final dto = ConfigTokensDto.fromJson(data);

      return dto.toEntity();
    } catch (e) {
      return ConfigTokens({});
    }
  }

  @override
  Future<bool> init(RemoteConfigSettings? settings) async {
    try {
      await _repository.init(settings);

      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> setDefaultValue(List<ConfigValue>? defValues) async {
    try {
      await _repository.setDefaultValue(defValues ?? []);

      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> fetchAndActivate() async {
    try {
      await _repository.fetchAndActivate();

      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<ConfigMerchants> getMerchants() async {
    try {
      final response = await _repository.getMerchants();

      if (response == null || response.isEmpty) {
        return ConfigMerchants({});
      }

      final data = jsonDecode(response);

      final dto = ConfigMerchantsDto.fromJson(data);

      return dto.toEntity();
    } catch (e) {
      return ConfigMerchants({});
    }
  }
}
