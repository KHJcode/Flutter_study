class Memo {
  final int id;
  final String title;
  final String text;
  final String createTime;
  final String editTime;

  Memo({this.id, this.title, this.text, this.createTime, this.editTime});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'text': text,
      'createTime': createTime,
      'editTime': editTime,
    };
  }

  @override
  String toString() {
    return 'Memo{id: $id, title: $title, text: $text, createTime: $createTime, editTime: $editTime}';
  }
}
