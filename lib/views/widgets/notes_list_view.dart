import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custome_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (index, context) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(),
            );
          }),
    );
  }
}
