// ignore_for_file: public_member_api_docs, sort_constructors_first
class NoteModel {
  int? id;
  String?title;
  String?body;
  DateTime? Creation_date;
  NoteModel({
    this.id,
    this.title,
    this.body,
     this.Creation_date,
  });

 

  Map<String, dynamic> toMap() {
    return ({
      "id": id,
      "title": title,
      "body": body,
      "Creation_date":Creation_date.toString(),
    });
  }
}
