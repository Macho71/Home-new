class HomeProfil {
  String? img;
  String? title;
  String? name;

  HomeProfil({this.img, this.title, this.name});

  HomeProfil.fromJson(Map<String, dynamic> json) {
    img = json['img'];
    title = json['title'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['title'] = this.title;
    data['name'] = this.name;
    return data;
  }
}
