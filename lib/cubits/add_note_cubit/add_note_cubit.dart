import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  // bool isLoading = false;
  Color color = const Color(0xff667761);

  addNote(NoteModel note) async {
    
    note.color = color.value;
    emit(AddNoteLoading());
    // isLoading = true;
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
      // isLoading = false;
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
      // isLoading = false;
    }
  }
}
