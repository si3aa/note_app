import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_buttom.dart';
import 'package:note_app/views/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextFiled(
              hint: 'Title',
            ),
            SizedBox(
              height: 18,
            ),
            CustomTextFiled(
              hint: 'content',
              maxLines: 6,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButtom(),
             SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

