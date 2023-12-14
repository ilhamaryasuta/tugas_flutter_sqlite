class User {
  int? id;
  String? name;
  String? contact;
  String? address;
  String? description;
  userMap() {
    var mapping = <String, dynamic>{};
    mapping['id'] = id;
    mapping['name'] = name!;
    mapping['contact'] = contact!;
    mapping['address'] = address!;
    mapping['description'] = description!;
    return mapping;
  }
}
