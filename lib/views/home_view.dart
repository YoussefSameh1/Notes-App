import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white, size: 30),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'edit');
        },
        backgroundColor: Colors.lightGreen,
        child: const Icon(Icons.add, color: Colors.black, size: 30),
      ),
      body: Column(
        children: [
          NoteCard(
            color: Colors.orange,
            title: 'Flutter tips',
            content: 'Build your carrer with tharwat samy',
          ),
          NoteCard(
            color: Colors.green,
            title: 'Flutter tips',
            content: 'Build your carrer with tharwat samy',
          ),
          NoteCard(
            color: Colors.blue,
            title: 'Flutter tips',
            content: 'Build your carrer with tharwat samy',
          ),
        ],
      ),
    );
  }
}
