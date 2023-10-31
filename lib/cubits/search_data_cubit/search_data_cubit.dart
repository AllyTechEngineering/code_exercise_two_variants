import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_data_state.dart';

class SearchDataCubit extends Cubit<SearchDataState> {
  SearchDataCubit() : super(SearchDataState.initial());

  void setSearchTerm(String newSearchTerm) {
    // print('In SearchDataCubit to check newSearchTerm: $newSearchTerm');
    emit(state.copyWith(searchTerm: newSearchTerm));
  }
}
