class MaskDto {
  int? count;
  List<Stores>? stores;

  MaskDto({this.count, this.stores});

  MaskDto.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['stores'] != null) {
      stores = <Stores>[];
      json['stores'].forEach((v) {
        stores!.add(Stores.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    if (stores != null) {
      data['stores'] = stores!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Stores {
  String? addr;
  String? code;
  String? createdAt;
  double? lat;
  double? lng;
  String? name;
  String? remainStat;
  String? stockAt;
  String? type;

  Stores(
      {this.addr,
      this.code,
      this.createdAt,
      this.lat,
      this.lng,
      this.name,
      this.remainStat,
      this.stockAt,
      this.type});

  Stores.fromJson(Map<String, dynamic> json) {
    addr = json['addr'];
    code = json['code'];
    createdAt = json['created_at'];
    lat = json['lat'];
    lng = json['lng'];
    name = json['name'];
    remainStat = json['remain_stat'];
    stockAt = json['stock_at'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['addr'] = addr;
    data['code'] = code;
    data['created_at'] = createdAt;
    data['lat'] = lat;
    data['lng'] = lng;
    data['name'] = name;
    data['remain_stat'] = remainStat;
    data['stock_at'] = stockAt;
    data['type'] = type;
    return data;
  }
}
