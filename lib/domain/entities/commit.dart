import 'package:equatable/equatable.dart';

class Commit extends Equatable {
  final DateTime committedAt;
  final int additions;
  final int deletions;

  const Commit({
    required this.committedAt,
    required this.additions,
    required this.deletions,
  });

  @override
  List<Object?> get props => [
        committedAt,
        additions,
        deletions,
      ];
}
