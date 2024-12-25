import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/db/db_base.dart';
import 'package:note_app/bloc/note_bloc.dart';
// import 'package:note_app/screens/main_screen.dart';
import 'package:note_app/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbBaseNote.ensureInitialized();
  await DbBaseHistory.ensureInitialized();
  runApp(BlocProvider<NoteBloc>(
    create: (context) => NoteBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
