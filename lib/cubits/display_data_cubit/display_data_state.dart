import 'package:equatable/equatable.dart';

import '../../models/code_exercise_model.dart';

abstract class DisplayDataState extends Equatable {}

class InitialState extends DisplayDataState {
  @override
  List<Object> get props => [];
}

class LoadingState extends DisplayDataState {
  @override
  List<Object> get props => [];
}

class LoadedState extends DisplayDataState {
  LoadedState(this.codeExerciseData);

  final List<CodeExerciseModel> codeExerciseData;

  @override
  List<Object> get props => [codeExerciseData];
}

class ErrorState extends DisplayDataState {
  @override
  List<Object> get props => [];
}
