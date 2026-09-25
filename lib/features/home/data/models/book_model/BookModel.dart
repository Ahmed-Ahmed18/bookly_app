import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "-TgNzYtVZVgC"
/// etag : "SF9Q4eHQaXA"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/-TgNzYtVZVgC"
/// volumeInfo : {"title":"Practical Goal Programming","authors":["Dylan Jones","Mehrdad Tamiz"],"publisher":"Springer Science & Business Media","publishedDate":"2010-03-10","description":"Practical Goal Programming is intended to allow academics and practitioners to be able to build effective goal programming models, to detail the current state of the art, and to lay the foundation for its future development and continued application to new and varied fields. Suitable as both a text and reference, its nine chapters first provide a brief history, fundamental definitions, and underlying philosophies, and then detail the goal programming variants and define them algebraically. Chapter 3 details the step-by-step formulation of the basic goal programming model, and Chapter 4 explores more advanced modeling issues and highlights some recently proposed extensions. Chapter 5 then details the solution methodologies of goal programming, concentrating on computerized solution by the Excel Solver and LINGO packages for each of the three main variants, and includes a discussion of the viability of the use of specialized goal programming packages. Chapter 6 discusses the linkages between Pareto Efficiency and goal programming. Chapters 3 to 6 are supported by a set of ten exercises, and an Excel spreadsheet giving the basic solution of each example is available at an accompanying website. Chapter 7 details the current state of the art in terms of the integration of goal programming with other techniques, and the text concludes with two case studies which were chosen to demonstrate the application of goal programming in practice and to illustrate the principles developed in Chapters 1 to 7. Chapter 8 details an application in healthcare, and Chapter 9 describes applications in portfolio selection.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9781441957719"},{"type":"ISBN_10","identifier":"1441957715"}],"readingModes":{"text":true,"image":true},"pageCount":180,"printType":"BOOK","categories":["Business & Economics"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.11.11.0.preview.3","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=-TgNzYtVZVgC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=-TgNzYtVZVgC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com/books?id=-TgNzYtVZVgC&pg=PA76&dq=progarmming&hl=&cd=1&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=-TgNzYtVZVgC&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=-TgNzYtVZVgC"}
/// saleInfo : {"country":"US","saleability":"FOR_SALE_AND_RENTAL","isEbook":true,"listPrice":{"amount":99,"currencyCode":"USD"},"retailPrice":{"amount":79.2,"currencyCode":"USD"},"buyLink":"https://play.google.com/store/books/details?id=-TgNzYtVZVgC&rdid=book--TgNzYtVZVgC&rdot=1&source=gbs_api","offers":[{"finskyOfferType":1,"listPrice":{"amountInMicros":99000000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":79200000,"currencyCode":"USD"},"giftable":true},{"finskyOfferType":3,"listPrice":{"amountInMicros":34650000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":30150000,"currencyCode":"USD"},"rentalDuration":{"unit":"DAY","count":90}}]}
/// accessInfo : {"country":"US","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Practical_Goal_Programming-sample-epub.acsm?id=-TgNzYtVZVgC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Practical_Goal_Programming-sample-pdf.acsm?id=-TgNzYtVZVgC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=-TgNzYtVZVgC&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"... <b>programming</b> variants using computerised software . The theory and methods of goal <b>programming</b> solution will also be detailed . 5.1 Computerised Solution of Weighted Goal <b>Programming</b> Example Algebraically speaking , the linear&nbsp;..."}

class BookModel {
  BookModel({
      String? kind, 
      String? id, 
      String? etag, 
      String? selfLink, 
      VolumeInfo? volumeInfo, 
      SaleInfo? saleInfo, 
      AccessInfo? accessInfo, 
      SearchInfo? searchInfo,}){
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
}

  BookModel.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    _saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    _searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;
BookModel copyWith({  String? kind,
  String? id,
  String? etag,
  String? selfLink,
  VolumeInfo? volumeInfo,
  SaleInfo? saleInfo,
  AccessInfo? accessInfo,
  SearchInfo? searchInfo,
}) => BookModel(  kind: kind ?? _kind,
  id: id ?? _id,
  etag: etag ?? _etag,
  selfLink: selfLink ?? _selfLink,
  volumeInfo: volumeInfo ?? _volumeInfo,
  saleInfo: saleInfo ?? _saleInfo,
  accessInfo: accessInfo ?? _accessInfo,
  searchInfo: searchInfo ?? _searchInfo,
);
  String? get kind => _kind;
  String? get id => _id;
  String? get etag => _etag;
  String? get selfLink => _selfLink;
  VolumeInfo? get volumeInfo => _volumeInfo;
  SaleInfo? get saleInfo => _saleInfo;
  AccessInfo? get accessInfo => _accessInfo;
  SearchInfo? get searchInfo => _searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    if (_searchInfo != null) {
      map['searchInfo'] = _searchInfo?.toJson();
    }
    return map;
  }

}