import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constants.dart';
import 'color_item.dart';

class EditNoteColorsListView extends StatefulWidget {
  const EditNoteColorsListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> {
  int? currentColor;
  @override
  void initState() {
    currentColor = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
              widget.note.color = kColors[index].value;
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
