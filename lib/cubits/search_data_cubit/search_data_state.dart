part of 'search_data_cubit.dart';

class SearchDataState extends Equatable {
  final String searchTerm;
  const SearchDataState({
    required this.searchTerm,
  });

  factory SearchDataState.initial() {
    return const SearchDataState(searchTerm: '');
  }

  @override
  List<Object> get props => [searchTerm];

  @override
  String toString() => 'SearchState(searchTerm: $searchTerm)';

  SearchDataState copyWith({
    String? searchTerm,
  }) {
    return SearchDataState(
      searchTerm: searchTerm ?? this.searchTerm,
    );
  }
}
