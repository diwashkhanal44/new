import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';
import 'package:you/features/all_utils/models/NoteModels.dart';
import 'package:you/features/all_utils/repo/cubit/note_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';

class NotesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
          width: 40,
          child: FloatingActionButton(
            heroTag: UniqueKey(),
            onPressed: () async {
              DateTime? selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2099));
              if (selectedDate != null) {
                selectedDate = selectedDate.add(Duration(
                  hours: DateTime.now().hour,
                  seconds: DateTime.now().second,
                ));

                AutoRouter.of(context).push(AllUtilsWrapper(
                    children: [CreateUpdateNotes(dateTime: selectedDate)]));
              }
            },
            backgroundColor: Theme.of(context).accentColor,
            child: Icon(
              Icons.note_add_outlined,
            ),
          )),
      appBar: AppBar(
        title: Text("All Notes"),
        leading: BackButton(onPressed: () => AutoRouter.of(context).pop()),
      ),
      body: FutureBuilder(
        future: BlocProvider.of<NoteCubit>(context, listen: false).getNotes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Center(child: CircularProgressIndicator(strokeWidth: 1)),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            TextStyle dateStyle =
                TextStyle(fontSize: 12, fontWeight: FontWeight.bold);

            return BlocBuilder<NoteCubit, NoteState>(
              builder: (context, state) {
                if (state.items.isEmpty) {
                  return Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "No notes are available yet.\nStart adding notes to see here.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ));
                }
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: state.items.length,
                    itemBuilder: (context, index) {
                      Note model = state.items[index];
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color(model.color!),
                        child: InkWell(
                          onLongPress: () {
                            //delete
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text("Delete this note?"),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("No")),
                                        TextButton(
                                            onPressed: () {
                                              BlocProvider.of<NoteCubit>(
                                                      context,
                                                      listen: false)
                                                  .deleteNote(model.id);
                                              Navigator.pop(context);
                                            },
                                            child: Text("Yes")),
                                      ],
                                    ));
                          },
                          onTap: () => AutoRouter.of(context).push(
                              AllUtilsWrapper(
                                  children: [CreateUpdateNotes(note: model)])),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 80,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          NepaliDateFormat.yMMMM(
                                                  Language.english)
                                              .format(DateTime
                                                      .fromMillisecondsSinceEpoch(
                                                          model.id!)
                                                  .toNepaliDateTime()),
                                          style: dateStyle,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          NepaliDateFormat.d(Language.english)
                                              .format(DateTime
                                                      .fromMillisecondsSinceEpoch(
                                                          model.id!)
                                                  .toNepaliDateTime()),
                                          style:
                                              dateStyle.copyWith(fontSize: 20),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          NepaliDateFormat.EEEE(
                                                  Language.english)
                                              .format(DateTime
                                                      .fromMillisecondsSinceEpoch(
                                                          model.id!)
                                                  .toNepaliDateTime()),
                                          style: dateStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        DateFormat(DateFormat.YEAR_MONTH_DAY)
                                            .format(
                                          DateTime.fromMillisecondsSinceEpoch(
                                              model.id!),
                                        ),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(model.content!,
                                          maxLines: 2,
                                          style: TextStyle(fontSize: 18)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          } else {
            return Container(
              child: Text(
                "${snapshot.data}",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
