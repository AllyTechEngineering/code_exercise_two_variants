import 'package:equatable/equatable.dart';

class CodeExerciseModel extends Equatable {
  final String text; //Text
  final String firstUrl; //FirstURL
  final String url; //URL
  const CodeExerciseModel({
    this.text = '',
    this.firstUrl = '',
    this.url = '',
  });

  factory CodeExerciseModel.fromJson(Map<String, dynamic> data) {
    final text = data['Text'] as String;
    final firstUrl = data['FirstURL'] as String;
    final url = data['URL'] as String;
    return CodeExerciseModel(text: text, firstUrl: firstUrl, url: url);
  }

  @override
  List<Object> get props => [text, firstUrl, url];

  @override
  String toString() => 'CodeExerciseModel(text: $text, firstUrl: $firstUrl, url: $url)';

  CodeExerciseModel copyWith({
    String? text,
    String? firstUrl,
    String? url,
  }) {
    return CodeExerciseModel(
      text: text ?? this.text,
      firstUrl: firstUrl ?? this.firstUrl,
      url: url ?? this.url,
    );
  }
}
