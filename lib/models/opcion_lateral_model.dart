class OpcionLateralModel {
  String? route;
  String? name;
  bool? active;

  OpcionLateralModel({this.route, this.name, this.active});

  OpcionLateralModel.fromJson(Map<String, dynamic> json) {
    route = json['route'] ?? 'todos';
    name = json['name'] ?? '';
    active = json['active'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['route'] = route;
    data['name'] = name;
    data['active'] = active;
    return data;
  }
}
