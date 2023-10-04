import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custome_app_bar.dart';
import 'package:notes_app/views/widgets/custome_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomeAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 40,
          ),
          CustomeTextFormField(
            hint: widget.note.title,
            onChanged: (data) {
              title = data;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomeTextFormField(
            hint: widget.note.content,
            maxLines: 5,
            onChanged: (data) {
              content = data;
            },
          ),
        ],
      ),
    );
  }
}
