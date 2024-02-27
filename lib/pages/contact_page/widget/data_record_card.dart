import 'package:flutter/material.dart';

// WIDGET DELLA RIGA DELLE DESCRIZIONI DELLA CARD IN PAGE CONTACT IN DETTAGLIO
class DataRecordCard extends StatelessWidget {
  final String subtitle;
  final String title;
  final IconData? trailing;

  const DataRecordCard({
    super.key,
    required this.subtitle,
    required this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        trailing: Icon(trailing),
        title: Text(title),
        subtitle: Text(subtitle),
        titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w200,
            color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
