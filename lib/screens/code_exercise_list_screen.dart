import 'package:cached_network_image/cached_network_image.dart';
import 'package:code_exercise_two_variants/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:code_exercise_two_variants/flavors.dart';
import '../cubits/display_data_cubit/display_data_cubit.dart';
import '../cubits/display_data_cubit/display_data_state.dart';
import '../models/code_exercise_model.dart';
import 'detail_screen.dart';

class CodeExerciseListScreen extends StatefulWidget {
  const CodeExerciseListScreen({super.key});

  @override
  CodeExerciseListScreenState createState() => CodeExerciseListScreenState();
}

class CodeExerciseListScreenState extends State<CodeExerciseListScreen> {
  int indexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title:  Text(F.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SearchScreen(),
            BlocBuilder<DisplayDataCubit, DisplayDataState>(
              builder: (context, state) {
                if (state is LoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is ErrorState) {
                  return  const Center(
                    child: Icon(Icons.close),
                  );
                } else if (state is LoadedState && Device.get().isPhone) {
                  final codeExerciseData = state.codeExerciseData;
                  return Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: codeExerciseData.length,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          title: Text(codeExerciseData[index]
                              .text
                              .split('-')
                              .first), //only shows he name. Removes the details of the description after the ' - ' char.
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  indexValue: index,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                } else if (state is LoadedState && Device.get().isTablet) {
                  final codeExerciseData = state.codeExerciseData;
                  return Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: codeExerciseData.length,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          subtitle: Text(codeExerciseData[index].text),
                          title: Text(codeExerciseData[index].text.split('-').first),
                          leading: CachedNetworkImage(
                            imageUrl: 'https://duckduckgo.com/${codeExerciseData[index].url}',
                            placeholder: (context, url) => const CircularProgressIndicator(),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.no_photography,
                              color: Colors.white60,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  indexValue: index,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(List<CodeExerciseModel> codeExerciseData, int index) {
    return CircleAvatar(
      backgroundImage:
          NetworkImage('${codeExerciseData[index].firstUrl}${codeExerciseData[index].url}'),
    );
  }
}
