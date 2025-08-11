import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0), //يكون نفس البادنج في الفيو الاولى عشان تناسق المسافات بكل الفيوز يكون واحد
      child: Column(
        children: const [
          SizedBox(height: 40), 
          CustomAppBar(title: 'Edit Notes', icon: Icons.check,),
          SizedBox(height: 40), 
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 16), 
          CustomTextField(hintText: 'Content', maxLines: 5,)
        ],
      ),
    );
  }
}
