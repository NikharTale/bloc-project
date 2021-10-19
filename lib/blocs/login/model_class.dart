class NewsModel {
  NewsModel({
    required this.token,
  });

  String token;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
