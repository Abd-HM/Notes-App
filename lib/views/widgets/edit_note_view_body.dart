import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_app_bar.dart';
import 'package:notes_app/views/widgets/custome_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomeAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(
            height: 40,
          ),
          CustomeTextFormField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomeTextFormField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
