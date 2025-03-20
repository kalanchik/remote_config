import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/data/models/available_banks/config_available_banks_dto.dart';
import 'package:remote_config/src/data/models/config_value.dart';
import 'package:remote_config/src/domain/entitty/available_banks/config_available_banks.dart';
import 'package:remote_config/src/domain/repository/remote_config_repository.dart';
import 'package:remote_config/src/domain/use_case/remote_config_u_c.dart';

class RemoteConfigUCImpl implements RemoteConfigUC {
  final RemoteConfigRepository _repository;

  RemoteConfigUCImpl(this._repository);

  @override
  Future<ConfigAvailableBanks?> getAvailableBanks() async {
    final response = await _repository.getAvailableBanks();

    if (response == null) return null;

    try {
      final json = jsonDecode(response) as Json;

      final dto = ConfigAvailableBanksDto.fromJson(json);

      return dto.toEntity();
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> getBanksInfo() async {}

  @override
  Future<void> getChangeLog() async {}

  @override
  Future<void> getTokensInfo() async {}

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
}
