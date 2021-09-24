import 'package:intl/intl.dart';

class Note {
  int? _id; //created time
  String? _content;
  int? _color;

  Note(
    this._id,
    this._content,
    this._color,
  );
  int? get id => _id;
  String? get content => _content;
  String get date {
    final date = DateTime.fromMillisecondsSinceEpoch(id!);
    return DateFormat('EEE h:mm a, dd/MM/yyyy').format(date);
  }

  int? get color => _color;
}
