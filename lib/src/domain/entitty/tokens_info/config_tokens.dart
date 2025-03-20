import 'package:equatable/equatable.dart';
import 'package:remote_config/src/domain/entitty/tokens_info/token_info.dart';

class ConfigTokens extends Equatable {
  const ConfigTokens(this.tokens);

  final Map<String, TokenInfo> tokens;

  TokenInfo? getToken(String techToken) {
    if (!tokens.containsKey(techToken)) {
      return null;
    }

    return tokens[techToken];
  }

  List<TokenInfo> get all => tokens.values.toList();

  @override
  List<Object?> get props => [tokens];
}
