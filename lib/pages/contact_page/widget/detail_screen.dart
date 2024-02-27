



// LA PAGINA CHE VIENE ATTIVATA AL TOCCO DELL' IMMAGINE
import 'package:flutter/material.dart';
import 'package:pages_project/pages/contact_page/widget/contact_image.dart';

class DetailScreen extends StatelessWidget {
  final int id;
  const DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: ContactImage(
            imageUrl: 'https://picsum.photos/seed/${id + 1}/600',
            size: 200,
          ),
        ),
      ),
    );
  }
}
