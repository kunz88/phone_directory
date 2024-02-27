import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pages_project/cubits/contacts_cubit/contacts_cubit.dart';
import 'package:pages_project/pages/contact_page/contact_page.dart';

import 'pages/phone_directory/phone_directory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactsCubit(),
      child: MaterialApp.router(
        // costruttore router indispensabile per utilizzare go route
        routerConfig: GoRouter(
          // ! router per le la navigazione tra le pagine
          initialLocation: '/users',
          routes: [
            GoRoute(
                // prima route
                path: '/users',
                builder: (context, state) => const PhoneDirectory(),
                routes: [
                  GoRoute(
                    // seconda route innestata nella prima
                    path: ':id',
                    builder: (context, state) => ContactPage(
                      contactId: int.parse(state.pathParameters['id']!),
                    ),
                  ),
                ]),
          ],
        ),
        title: 'Flutter_contact_app',
        theme: ThemeData(
          useMaterial3: true, // settiamo material3 come tema dell'app
          colorScheme: ColorScheme.fromSeed(
              seedColor:
                  const Color.fromARGB(255, 62, 85, 96)), // schema del colore
        ),
      ),
    );
  }
}
