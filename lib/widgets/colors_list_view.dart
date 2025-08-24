import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kColors.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        Color color = kColors[index];
        return GestureDetector(
          onTap: () {
            currentIndex = index;
            setState(() {});
            BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
          },
          child: ColorItem(isActive: index == currentIndex, color: color),
        );
      },
    );
  }
}
