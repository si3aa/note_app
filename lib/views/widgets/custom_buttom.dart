import 'package:flutter/material.dart';
import 'package:note_app/views/constant.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: primaryColor),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize:18),
        ),
      ),
    );
  }
}
