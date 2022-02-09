// To parse required this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.viewSearchusrUsrId,
    required this.viewSearchusrUsrName,
    required this.viewSearchusrUsrAccid,
    required this.viewSearchusrUsrBuilding,
  });

  String viewSearchusrUsrId;
  String viewSearchusrUsrName;
  String viewSearchusrUsrAccid;
  String viewSearchusrUsrBuilding;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    viewSearchusrUsrId: json["view_searchusr_usr_id"],
    viewSearchusrUsrName: json["view_searchusr_usr_name"],
    viewSearchusrUsrAccid: json["view_searchusr_usr_accid"],
    viewSearchusrUsrBuilding: json["view_searchusr_usr_building"],
  );

  Map<String, dynamic> toJson() => {
    "view_searchusr_usr_id": viewSearchusrUsrId,
    "view_searchusr_usr_name": viewSearchusrUsrName,
    "view_searchusr_usr_accid": viewSearchusrUsrAccid,
    "view_searchusr_usr_building": viewSearchusrUsrBuilding,
  };
}
