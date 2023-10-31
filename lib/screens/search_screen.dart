import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/search_data_cubit/search_data_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Search...',
              border: InputBorder.none,
              filled: true,
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (String? newSearchTerm) {
              if (newSearchTerm != null) {
                context.read<SearchDataCubit>().setSearchTerm(newSearchTerm);
              }
            },
          ),
        ],
      ),
    );
  }
}
