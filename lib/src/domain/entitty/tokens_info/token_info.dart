import 'package:equatable/equatable.dart';

class TokenInfo extends Equatable {
  const TokenInfo({required this.tokenId, required this.icon});

  final int tokenId;
  final String icon;

  @override
  List<Object?> get props => [tokenId, icon];
}
