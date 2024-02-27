import 'package:flutter/material.dart';
import 'package:pages_project/models/contact.dart';
import 'package:pages_project/pages/contact_page/widget/contact_image.dart';
import 'package:pages_project/pages/contact_page/widget/detail_screen.dart';


// WIDGET CHE SI OCCUPA DELLA GESTURE PER LO ZOOM DELL'IMMAGINE
class ImageZoom extends StatelessWidget {
  const ImageZoom({
    super.key,
    required this.contact,
  });

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // gestur detector permette di controllare una determinata azione
      onTap: () {
        // al tocco
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          // al tocco posiziono una pagina nell'array di pagine con push
          return DetailScreen(
              id: contact
                  .id); // renderizzo la pagina sopra quella precedente
        }));
      },
      child: ContactImage(
        imageUrl: 'https://picsum.photos/seed/${contact.id + 1}/600',
        size: 200,
      ),
    );
  }
}
