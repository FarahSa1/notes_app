import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [SizedBox(height: 40), CustomAppBar(), NoteItem()],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            // contentPadding: EdgeInsets.all(0),
            title: const Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Build your Career with tharwat sami',
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: Transform.translate(
              offset: const Offset(0, -15), //عشان احرك الايقون لفوق 
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, top: 16),
            child: Text(
              'May 21, 2022',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withValues(alpha: 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
