// classe card contatto, utilizzata all'interno della pagina 2
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pages_project/models/contact.dart';
import 'package:pages_project/pages/contact_page/widget/data_record_card.dart';
import 'package:pages_project/pages/contact_page/widget/image_zoom.dart';


// WIDGET CHE DELLA STRUTTURA DELLA CARD ,LAYOUT DELLA PAGINA CONTATTO IN DETTAGLIO
class CardContact extends StatelessWidget {
  final Contact contact; // devo dichiarare l'extra di tipo contatto

  const CardContact({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ImageZoom(contact: contact),
        const SizedBox(height: 16),
        // le tre card successive rappresentano i campi del mio form dell'utente in dettaglio
        DataRecordCard(
          trailing: Icons.phone_android_rounded,
          title: contact.phoneNumber,
          subtitle: "phone number",
        ),
        DataRecordCard(
          trailing: Icons.add_home_rounded,
          title: contact.address,
          subtitle: "Address",
        ),
        DataRecordCard(
          title: DateFormat.yMMMMd().format(contact.dateOfBirth),
          subtitle: "Date of birth",
        ),
      ]),
    );
  }
}



