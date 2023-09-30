import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomeTextField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomeTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
