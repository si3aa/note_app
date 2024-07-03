import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custome_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (index, context) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: NoteItem(),
      );
    });
  }
}