import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddNotesCubit(),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
            listener: (context, state) {
          if (state is AddNotesFailure) {}
          if (state is AddNotesSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Note Added Successfully',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 3),
              ),
            );
            Navigator.pop(context);
          }
        }, builder: (BuildContext context, AddNotesState state) {
          //AbsorbPointer => It prevent the user from handling anything or pressing on the screen
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        }));
  }
}
