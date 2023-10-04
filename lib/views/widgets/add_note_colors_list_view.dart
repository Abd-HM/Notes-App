import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import 'color_item.dart';

class AddNoteColorsListView extends StatefulWidget {
  const AddNoteColorsListView({super.key});

  @override
  State<AddNoteColorsListView> createState() => _AddNoteColorsListViewState();
}

class _AddNoteColorsListViewState extends State<AddNoteColorsListView> {
  int currentColor = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentColor = index;
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: ColorItem(
                isActive: currentColor == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
