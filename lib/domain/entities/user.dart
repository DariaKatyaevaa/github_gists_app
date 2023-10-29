import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String userName;
  final String avatarUrl;

  const User({
    required this.id,
    required this.userName,
    required this.avatarUrl,
  });

  @override
  List<Object?> get props => [
        id,
        userName,
        avatarUrl,
      ];
}
