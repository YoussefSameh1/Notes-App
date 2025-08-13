import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NoteCard extends StatelessWidget {
  NoteCard({
    super.key,
    required this.color,
    required this.title,
    required this.content,
  });

  Color color;
  String title;
  String content;
  String date = DateTime.now().toString().substring(0, 9);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      content,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: SizedBox(
                child: Column(
                  children: [
                    Spacer(flex: 2),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete, color: Colors.black, size: 30),
                    ),
                    Spacer(flex: 4),
                    Text(date, style: const TextStyle(color: Colors.black45, fontSize: 15)),
                    Spacer(flex: 1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
