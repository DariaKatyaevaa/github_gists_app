class Commit {
  final DateTime committedAt;
  final int additions;
  final int deletions;

  const Commit({
    required this.committedAt,
    required this.additions,
    required this.deletions,
  });
}
