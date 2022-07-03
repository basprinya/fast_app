class GlobalModel {
  String? name;
  String? mobile;
  String? image;
  double lat;
  double lng;

  // สร้าง constructor
  GlobalModel({
    this.name,
    this.mobile,
    this.image,
    required this.lat,
    required this.lng,
  });

  get website => null;
}
