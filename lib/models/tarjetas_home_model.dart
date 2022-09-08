import 'package:flutter/material.dart';

import '../utils/utils.dart';

class TarjetaHomeModel {
  String? route;
  String? title;
  String? subTitle;
  Color? backgroundColor;
  String? imageUrl;
  Color? buttonColor;
  String? buttonText;

  TarjetaHomeModel({
    this.route,
    this.title,
    this.subTitle,
    this.backgroundColor,
    this.imageUrl,
    this.buttonColor,
    this.buttonText,
  });

  TarjetaHomeModel.fromJson(Map<String, dynamic> json) {
    route = json['route'] ?? 'todos';
    title = json['title'] ?? '';
    subTitle = json['subTitle'] ?? '';
    backgroundColor = json['backgroundColor'] ?? colors.azulSiesa;
    imageUrl = json['imageUrl'] ?? '';
    buttonColor = json['buttonColor'] ?? colors.azulSecundario;
    buttonText = json['buttonText'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['route'] = route;
    data['name'] = title;
    data['subTitle'] = subTitle;
    data['backgroundColor'] = backgroundColor;
    data['imageUrl'] = imageUrl;
    data['buttonColor'] = buttonColor;
    data['buttonText'] = buttonText;
    return data;
  }
}
