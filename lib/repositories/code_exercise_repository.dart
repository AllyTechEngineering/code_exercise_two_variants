import 'dart:convert';

import 'package:dio/dio.dart';
import 'dart:async';
import '../models/code_exercise_model.dart';
import '../utilities/constants.dart';

class CodeExerciseRepository {
  const CodeExerciseRepository(this.client);

  final Dio client;

  Future<List<CodeExerciseModel>> getCodeExData() async {
    try {
      final url = kApiHost;
      final response = await client.get(url);
      final responseData = await jsonDecode(response.data);
      final codeExData = List<CodeExerciseModel>.of(
        responseData['RelatedTopics'].map<CodeExerciseModel>(
          (json) => CodeExerciseModel(
            firstUrl: json['FirstURL'],
            url: json['Icon']['URL'],
            text: json['Text'],
          ),
        ),
      );
      return codeExData;
    } catch (e) {
      print('try catch error: $e');
      rethrow;
    }
  }
} //class
