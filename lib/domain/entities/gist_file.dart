import 'package:equatable/equatable.dart';

class GistFile extends Equatable {
  final String filename;
  final String rawUrl;

  const GistFile({
    required this.filename,
    required this.rawUrl,
  });

  @override
  List<Object?> get props => [
        filename,
        rawUrl,
      ];
}
