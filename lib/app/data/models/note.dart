import 'dart:convert';

import 'package:google_keep/app/data/enums/notetype.dart';
export 'package:google_keep/app/data/enums/notetype.dart';

List<Note> noteFromJson(String str) =>
    List<Note>.from(json.decode(str).map((x) => Note.fromJson(x)));

String noteToJson(List<Note> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Note {
  Note({
    required this.title,
    required this.content,
    required this.type,
    required this.image,
    required this.audio,
    required this.checkList,
  });

  final String title;
  final String content;
  final NoteType type;
  final String image;
  final String audio;
  final List<CheckItem>? checkList;

  factory Note.fromJson(Map<String, dynamic> json) => Note(
        title: json["title"],
        content: json["content"],
        type: NoteType.values.elementAt(json['type']),
        image: json["image"],
        audio: json["audio"],
        checkList: json["checkList"] == null
            ? null
            : List<CheckItem>.from(
                json["checkList"].map((x) => CheckItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "content": content,
        "type": type.index,
        "image": image,
        "audio": audio,
        "checkList": checkList == null
            ? null
            : List<dynamic>.from(checkList!.map((x) => x.toJson())),
      };
}

class CheckItem {
  CheckItem({
    required this.text,
    required this.checked,
  });

  final String text;
  final bool checked;

  factory CheckItem.fromJson(Map<String, dynamic> json) => CheckItem(
        text: json["text"],
        checked: json["checked"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "checked": checked,
      };
}
