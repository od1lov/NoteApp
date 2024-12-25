import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/components/note_item.dart';
// import 'package:note_app/db/db_note.dart';
import 'package:note_app/bloc/note_bloc.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/screens/add_dialog.dart';
import 'package:note_app/screens/history_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    context.read<NoteBloc>().add(NoteEvent.getNotes());
    context.read<NoteBloc>().add(NoteEvent.getHistory());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Note app',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Expanded(
                child: SizedBox(),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return BlocProvider.value(
                        value: (context).read<NoteBloc>(),
                        child: HistoryScreen(),
                      );
                    }),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(
                    2,
                  ),
                  child: Icon(
                    Icons.history,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.green.withOpacity(
            0.8,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green.withOpacity(
            0.8,
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return  AddDialog(onAdd: (text) {
                  context.read<NoteBloc>().add(
                    NoteEvent.addNote(
                      model: NoteModel(
                        id: state.notes?.length ?? 0,
                        note: text,
                        createdAt: DateFormat('yyyy-MM-dd – kk:mm').format(
                          DateTime.now(),
                        ),
                      ),
                    ),
                  );
                },);
              },
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Container(
          child: ((state.notes?.length ?? 0) != 0)
              ? ListView.builder(
                  itemCount: state.notes?.length ?? 0,
                  itemBuilder: (context, index) {
                    return NoteItem(
                      id: state.notes?[index].id ?? 0,
                      note: state.notes?[index].note ?? "",
                      createdAt: state.notes?[index].createdAt ?? "",
                    );
                  },
                )
              : const Center(
                  child: Text(
                    'No notes added',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
        ),
      );
    });
  }
}
