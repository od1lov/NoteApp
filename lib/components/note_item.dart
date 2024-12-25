import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/bloc/note_bloc.dart';
import 'package:note_app/model/history_model.dart';
import 'package:note_app/screens/warning_dialog.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
    required this.createdAt,
    required this.id,
  });
  final String note;
  final String createdAt;
  final int id;
  @override
  Widget build(BuildContext context) {
    return
        // Slidable(
        //   endActionPane: ActionPane(
        //     motion: StretchMotion(),
        //     children: [
        //       SlidableAction(
        //         onPressed: (context) {

        //         },
        //         icon: Icons.delete,
        //         backgroundColor: Colors.red,
        //         foregroundColor: Colors.white,
        //         label: 'Delete',
        //       ),
        //     ],
        //   ),
        //   child:
        Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 16,
      ),
      padding: EdgeInsets.only(
        bottom: 8,
        // right: 16,
        // left: 16,
        // top: 8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(
            0.6,
          ),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 6, top: 6),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            height: 50,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        note,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      createdAt,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
              // )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => WarningDialog(
                          onSuccess: () {
                            context.read<NoteBloc>().add(NoteEvent.completeTask(
                                noteId: id,
                                model: HistoryModel(
                                  id: id,
                                  note: note,
                                  status: true,
                                  createdAt: createdAt,
                                  completedAt: DateFormat('yyyy-MM-dd – kk:mm')
                                      .format(DateTime.now()),
                                )));
                          },
                          title: "Are you sure want to complete this task?",
                        ),
                      );
                    },
                    child: Text(
                      "Yes",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => WarningDialog(
                          onSuccess: () {
                            context.read<NoteBloc>().add(NoteEvent.completeTask(
                                noteId: id,
                                model: HistoryModel(
                                  id: id,
                                  note: note,
                                  status: false,
                                  createdAt: createdAt,
                                  completedAt: DateFormat('yyyy-MM-dd – kk:mm')
                                      .format(DateTime.now()),
                                )));
                          },
                          title: "Are you sure want to complete this task?",
                        ),
                      );
                    },
                    child: Text(
                      "No",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
