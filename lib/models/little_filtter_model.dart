class LittleFiltterModel {
  String? route;
  String? text;
  bool? active;

  LittleFiltterModel({this.route, this.text, this.active});

  LittleFiltterModel.fromJson(Map<String, dynamic> json) {
    route = json['route'] ?? 'todos';
    text = json['text'] ?? '';
    active = json['active'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['route'] = route;
    data['text'] = text;
    data['active'] = active;
    return data;
  }
}
