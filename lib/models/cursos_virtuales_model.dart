class CursosVirtualesModel {
  String? courseName;
  String? ponenteName;
  String? date;
  String? time;
  int? type;

  CursosVirtualesModel(
      {this.courseName, this.ponenteName, this.date, this.time, this.type});

  CursosVirtualesModel.fromJson(Map<String, dynamic> json) {
    courseName = json['courseName'] ?? '';
    ponenteName = json['ponenteName'] ?? '';
    date = json['date'] ?? '';
    time = json['time'] ?? '';
    type = json['type'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['courseName'] = courseName;
    data['ponenteName'] = ponenteName;
    data['date'] = date;
    data['time'] = time;
    data['type'] = type;
    return data;
  }
}
