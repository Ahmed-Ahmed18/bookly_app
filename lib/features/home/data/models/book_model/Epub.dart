/// isAvailable : true
/// acsTokenLink : "http://books.google.com/books/download/Practical_Goal_Programming-sample-epub.acsm?id=-TgNzYtVZVgC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

class Epub {
  Epub({
      bool? isAvailable, 
      String? acsTokenLink,}){
    _isAvailable = isAvailable;
    _acsTokenLink = acsTokenLink;
}

  Epub.fromJson(dynamic json) {
    _isAvailable = json['isAvailable'];
    _acsTokenLink = json['acsTokenLink'];
  }
  bool? _isAvailable;
  String? _acsTokenLink;
Epub copyWith({  bool? isAvailable,
  String? acsTokenLink,
}) => Epub(  isAvailable: isAvailable ?? _isAvailable,
  acsTokenLink: acsTokenLink ?? _acsTokenLink,
);
  bool? get isAvailable => _isAvailable;
  String? get acsTokenLink => _acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = _isAvailable;
    map['acsTokenLink'] = _acsTokenLink;
    return map;
  }

}