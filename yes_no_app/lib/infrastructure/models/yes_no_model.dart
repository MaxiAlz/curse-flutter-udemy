// class YesNoModel {
//   String answer;
//   bool force;
//   String image;

//   YesNoModel({required this.answer, required this.force, required this.image});

//   factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
//       answer: json['answer'], force: json['forced'], image: json['image']);
// }

// To parse this JSON data, do https://app.quicktype.io/
//
//     final yesNoModel = yesNoModelFromJson(jsonString);

import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMEssageEntity() => Message(
      text: answer == 'yes' ? 'si' : 'no',
      fromWho: FromWho.hers,
      imageUrl: image);
}
