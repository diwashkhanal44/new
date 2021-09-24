import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:you/features/all_utils/models/NoteModels.dart';
import 'package:you/features/all_utils/repo/cubit/note_cubit.dart';

class CreateUpdateNotes extends StatefulWidget {
  final Note? note;
  final DateTime? dateTime;

  const CreateUpdateNotes({Key? key, this.note, this.dateTime})
      : super(key: key);

  @override
  _CreateUpdateNotesState createState() => _CreateUpdateNotesState();
}

class _CreateUpdateNotesState extends State<CreateUpdateNotes> {
  TextEditingController? contentText;
  int? id;
  int? color;

  @override
  void initState() {
    if (widget.note != null) color = widget.note!.color;
    if (widget.dateTime != null) {
      id = widget.dateTime!.millisecondsSinceEpoch;
    } else if (widget.note != null) id = widget.note!.id;
    super.initState();

    contentText = TextEditingController(
        text: widget.note != null ? widget.note!.content : null);
  }

  @override
  Widget build(BuildContext context) {
    color = color ?? 0xff6772AF;
    return Scaffold(
        backgroundColor: Color(color!),
        appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: Color(color!),
          title: Text("Create Note"),
          actions: [
            InkWell(
              onTap: () async {
                color = await showColorSelection(context) ?? color;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Color(color!),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                saveNote();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.done),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    NepaliDateFormat.MMMEd().format(
                      DateTime.fromMillisecondsSinceEpoch(id!)
                          .toNepaliDateTime(),
                    ),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: contentText,
                    maxLines: 999,
                    style: TextStyle(height: 1.4, color: Colors.white),
                    decoration: InputDecoration.collapsed(
                        border: InputBorder.none,
                        hintText: 'Note',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void saveNote() {
    String content = contentText!.text.trim();
    if (widget.note == null) {
      // int ids = id?? DateTime.now().millisecondsSinceEpoch;
      if (content.isNotEmpty)
        BlocProvider.of<NoteCubit>(context, listen: false)
            .addOrUpdateNote(id, content, color, EditMode.ADD);
    } else {
      if (content.isNotEmpty)
        BlocProvider.of<NoteCubit>(context, listen: false)
            .addOrUpdateNote(id, content, color, EditMode.UPDATE);
    }
    AutoRouter.of(context).pop();
  }

  Future<int?> showColorSelection(BuildContext context) async {
    List<int> colors = [
      0xff635C1F,
      0xff355823,
      0xff19504B,
      0xff2F555D,
      0xff1F3B5E,
      0xff42295D,
      0xff5A2345,
      0xff442F1B,
      0xff5B2B2A,
      0xff635C1F,
      0xff355823,
      0xff2F555D,
      0xff1F3B5E,
      0xffBFBFBF,
      0xffBF5C67,
      0xffBA3F6A,
      0xff6772AF,
      0xffAFB754,
      0xffBF5A3A,
      0xff70AD72,
      0xff36A6B6,
    ];

    int? selectedcolor = await showDialog(
        context: context,
        builder: (context) => Dialog(
              insetPadding: EdgeInsets.all(20),
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 20),
                        child: Text(
                          "Select note color",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 10,
                      runSpacing: 10,
                      children: colors
                          .map((e) => InkWell(
                                onTap: () {
                                  Navigator.pop(context, e);
                                },
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      Theme.of(context).accentColor,
                                  child: CircleAvatar(
                                    backgroundColor: Color(e),
                                    radius: 18,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ));

    return selectedcolor;
  }
}
