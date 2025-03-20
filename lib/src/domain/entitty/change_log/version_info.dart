import 'package:equatable/equatable.dart';

class VersionInfo extends Equatable {
  const VersionInfo({
    required this.version,
    required this.isBeta,
    required this.add,
    required this.fix,
    required this.date,
  });

  final String version;
  final bool isBeta;
  final List<String> add;
  final List<String> fix;
  final DateTime date;

  @override
  List<Object?> get props => [version, isBeta, add, fix, date];
}
