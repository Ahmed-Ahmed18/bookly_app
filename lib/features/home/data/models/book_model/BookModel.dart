import 'dart:convert';

import 'package:booky_app/features/home/domain/entities/book_entity.dart';
/// kind : "books#volume"
/// id : "-TgNzYtVZVgC"
/// etag : "0Px6QGh0ZJk"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/-TgNzYtVZVgC"
/// volumeInfo : {"title":"Practical Goal Programming","authors":["Dylan Jones","Mehrdad Tamiz"],"publisher":"Springer Science & Business Media","publishedDate":"2010-03-10","description":"Practical Goal Programming is intended to allow academics and practitioners to be able to build effective goal programming models, to detail the current state of the art, and to lay the foundation for its future development and continued application to new and varied fields. Suitable as both a text and reference, its nine chapters first provide a brief history, fundamental definitions, and underlying philosophies, and then detail the goal programming variants and define them algebraically. Chapter 3 details the step-by-step formulation of the basic goal programming model, and Chapter 4 explores more advanced modeling issues and highlights some recently proposed extensions. Chapter 5 then details the solution methodologies of goal programming, concentrating on computerized solution by the Excel Solver and LINGO packages for each of the three main variants, and includes a discussion of the viability of the use of specialized goal programming packages. Chapter 6 discusses the linkages between Pareto Efficiency and goal programming. Chapters 3 to 6 are supported by a set of ten exercises, and an Excel spreadsheet giving the basic solution of each example is available at an accompanying website. Chapter 7 details the current state of the art in terms of the integration of goal programming with other techniques, and the text concludes with two case studies which were chosen to demonstrate the application of goal programming in practice and to illustrate the principles developed in Chapters 1 to 7. Chapter 8 details an application in healthcare, and Chapter 9 describes applications in portfolio selection.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9781441957719"},{"type":"ISBN_10","identifier":"1441957715"}],"readingModes":{"text":true,"image":true},"pageCount":180,"printType":"BOOK","categories":["Business & Economics"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.11.11.0.preview.3","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=-TgNzYtVZVgC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=-TgNzYtVZVgC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com/books?id=-TgNzYtVZVgC&pg=PA76&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=-TgNzYtVZVgC&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=-TgNzYtVZVgC"}
/// saleInfo : {"country":"US","saleability":"FOR_SALE_AND_RENTAL","isEbook":true,"listPrice":{"amount":99,"currencyCode":"USD"},"retailPrice":{"amount":79.2,"currencyCode":"USD"},"buyLink":"https://play.google.com/store/books/details?id=-TgNzYtVZVgC&rdid=book--TgNzYtVZVgC&rdot=1&source=gbs_api","offers":[{"finskyOfferType":1,"listPrice":{"amountInMicros":99000000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":79200000,"currencyCode":"USD"},"giftable":true},{"finskyOfferType":3,"listPrice":{"amountInMicros":34650000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":30150000,"currencyCode":"USD"},"rentalDuration":{"unit":"DAY","count":90}}]}
/// accessInfo : {"country":"US","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Practical_Goal_Programming-sample-epub.acsm?id=-TgNzYtVZVgC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Practical_Goal_Programming-sample-pdf.acsm?id=-TgNzYtVZVgC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=-TgNzYtVZVgC&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"... <b>programming</b> variants using computerised software . The theory and methods of goal <b>programming</b> solution will also be detailed . 5.1 Computerised Solution of Weighted Goal <b>Programming</b> Example Algebraically speaking , the linear&nbsp;..."}

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));
String bookModelToJson(BookModel data) => json.encode(data.toJson());
class BookModel extends BookEntity{
  BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,}):super(bookID: id!,tittle: volumeInfo!.title!,image: volumeInfo.imageLinks?.thumbnail??''
      ,price: 0.0,rating:volumeInfo.maturityRating??'0',authorName: volumeInfo.authors!.first);

  BookModel.fromJson(dynamic json)
      : super(
    bookID: json['id'] ?? '',
    tittle: json['volumeInfo']?['title'] ?? '',
    image: json['volumeInfo']?['imageLinks']?['thumbnail'] ?? '',
    price: 0.0,
    rating: json['volumeInfo']?['maturityRating'] ?? '0',
    authorName: json['volumeInfo']?['authors'] != null
        ? json['volumeInfo']['authors'][0]
        : '',
  ) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];

    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;

    saleInfo = json['saleInfo'] != null
        ? SaleInfo.fromJson(json['saleInfo'])
        : null;

    accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;

    searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;
BookModel copyWith({  String? kind,
  String? id,
  String? etag,
  String? selfLink,
  VolumeInfo? volumeInfo,
  SaleInfo? saleInfo,
  AccessInfo? accessInfo,
  SearchInfo? searchInfo,
}) => BookModel(  kind: kind ?? this.kind,
  id: id ?? this.id,
  etag: etag ?? this.etag,
  selfLink: selfLink ?? this.selfLink,
  volumeInfo: volumeInfo ?? this.volumeInfo,
  saleInfo: saleInfo ?? this.saleInfo,
  accessInfo: accessInfo ?? this.accessInfo,
  searchInfo: searchInfo ?? this.searchInfo,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

}

/// textSnippet : "... <b>programming</b> variants using computerised software . The theory and methods of goal <b>programming</b> solution will also be detailed . 5.1 Computerised Solution of Weighted Goal <b>Programming</b> Example Algebraically speaking , the linear&nbsp;..."

SearchInfo searchInfoFromJson(String str) => SearchInfo.fromJson(json.decode(str));
String searchInfoToJson(SearchInfo data) => json.encode(data.toJson());
class SearchInfo {
  SearchInfo({
      this.textSnippet,});

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;
SearchInfo copyWith({  String? textSnippet,
}) => SearchInfo(  textSnippet: textSnippet ?? this.textSnippet,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }

}

/// country : "US"
/// viewability : "PARTIAL"
/// embeddable : true
/// publicDomain : false
/// textToSpeechPermission : "ALLOWED"
/// epub : {"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Practical_Goal_Programming-sample-epub.acsm?id=-TgNzYtVZVgC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// pdf : {"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Practical_Goal_Programming-sample-pdf.acsm?id=-TgNzYtVZVgC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// webReaderLink : "http://play.google.com/books/reader?id=-TgNzYtVZVgC&hl=&source=gbs_api"
/// accessViewStatus : "SAMPLE"
/// quoteSharingAllowed : false

AccessInfo accessInfoFromJson(String str) => AccessInfo.fromJson(json.decode(str));
String accessInfoToJson(AccessInfo data) => json.encode(data.toJson());
class AccessInfo {
  AccessInfo({
      this.country, 
      this.viewability, 
      this.embeddable, 
      this.publicDomain, 
      this.textToSpeechPermission, 
      this.epub, 
      this.pdf, 
      this.webReaderLink, 
      this.accessViewStatus, 
      this.quoteSharingAllowed,});

  AccessInfo.fromJson(dynamic json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;
AccessInfo copyWith({  String? country,
  String? viewability,
  bool? embeddable,
  bool? publicDomain,
  String? textToSpeechPermission,
  Epub? epub,
  Pdf? pdf,
  String? webReaderLink,
  String? accessViewStatus,
  bool? quoteSharingAllowed,
}) => AccessInfo(  country: country ?? this.country,
  viewability: viewability ?? this.viewability,
  embeddable: embeddable ?? this.embeddable,
  publicDomain: publicDomain ?? this.publicDomain,
  textToSpeechPermission: textToSpeechPermission ?? this.textToSpeechPermission,
  epub: epub ?? this.epub,
  pdf: pdf ?? this.pdf,
  webReaderLink: webReaderLink ?? this.webReaderLink,
  accessViewStatus: accessViewStatus ?? this.accessViewStatus,
  quoteSharingAllowed: quoteSharingAllowed ?? this.quoteSharingAllowed,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['viewability'] = viewability;
    map['embeddable'] = embeddable;
    map['publicDomain'] = publicDomain;
    map['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      map['epub'] = epub?.toJson();
    }
    if (pdf != null) {
      map['pdf'] = pdf?.toJson();
    }
    map['webReaderLink'] = webReaderLink;
    map['accessViewStatus'] = accessViewStatus;
    map['quoteSharingAllowed'] = quoteSharingAllowed;
    return map;
  }

}

/// isAvailable : true
/// acsTokenLink : "http://books.google.com/books/download/Practical_Goal_Programming-sample-pdf.acsm?id=-TgNzYtVZVgC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

Pdf pdfFromJson(String str) => Pdf.fromJson(json.decode(str));
String pdfToJson(Pdf data) => json.encode(data.toJson());
class Pdf {
  Pdf({
      this.isAvailable, 
      this.acsTokenLink,});

  Pdf.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
  bool? isAvailable;
  String? acsTokenLink;
Pdf copyWith({  bool? isAvailable,
  String? acsTokenLink,
}) => Pdf(  isAvailable: isAvailable ?? this.isAvailable,
  acsTokenLink: acsTokenLink ?? this.acsTokenLink,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }

}

/// isAvailable : true
/// acsTokenLink : "http://books.google.com/books/download/Practical_Goal_Programming-sample-epub.acsm?id=-TgNzYtVZVgC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

Epub epubFromJson(String str) => Epub.fromJson(json.decode(str));
String epubToJson(Epub data) => json.encode(data.toJson());
class Epub {
  Epub({
      this.isAvailable, 
      this.acsTokenLink,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
  bool? isAvailable;
  String? acsTokenLink;
Epub copyWith({  bool? isAvailable,
  String? acsTokenLink,
}) => Epub(  isAvailable: isAvailable ?? this.isAvailable,
  acsTokenLink: acsTokenLink ?? this.acsTokenLink,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }

}

/// country : "US"
/// saleability : "FOR_SALE_AND_RENTAL"
/// isEbook : true
/// listPrice : {"amount":99,"currencyCode":"USD"}
/// retailPrice : {"amount":79.2,"currencyCode":"USD"}
/// buyLink : "https://play.google.com/store/books/details?id=-TgNzYtVZVgC&rdid=book--TgNzYtVZVgC&rdot=1&source=gbs_api"
/// offers : [{"finskyOfferType":1,"listPrice":{"amountInMicros":99000000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":79200000,"currencyCode":"USD"},"giftable":true},{"finskyOfferType":3,"listPrice":{"amountInMicros":34650000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":30150000,"currencyCode":"USD"},"rentalDuration":{"unit":"DAY","count":90}}]

SaleInfo saleInfoFromJson(String str) => SaleInfo.fromJson(json.decode(str));
String saleInfoToJson(SaleInfo data) => json.encode(data.toJson());
class SaleInfo {
  SaleInfo({
      this.country, 
      this.saleability, 
      this.isEbook, 
      this.listPrice, 
      this.retailPrice, 
      this.buyLink, 
      this.offers,});

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    listPrice = json['listPrice'];
    retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    buyLink = json['buyLink'];
    if (json['offers'] != null) {
      offers = [];
      json['offers'].forEach((v) {
        offers?.add(Offers.fromJson(v));
      });
    }
  }
  String? country;
  String? saleability;
  bool? isEbook;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  String? buyLink;
  List<Offers>? offers;
SaleInfo copyWith({  String? country,
  String? saleability,
  bool? isEbook,
  ListPrice? listPrice,
  RetailPrice? retailPrice,
  String? buyLink,
  List<Offers>? offers,
}) => SaleInfo(  country: country ?? this.country,
  saleability: saleability ?? this.saleability,
  isEbook: isEbook ?? this.isEbook,
  listPrice: listPrice ?? this.listPrice,
  retailPrice: retailPrice ?? this.retailPrice,
  buyLink: buyLink ?? this.buyLink,
  offers: offers ?? this.offers,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    map['listPrice'] = listPrice;
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    map['buyLink'] = buyLink;
    if (offers != null) {
      map['offers'] = offers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// finskyOfferType : 1
/// listPrice : {"amountInMicros":99000000,"currencyCode":"USD"}
/// retailPrice : {"amountInMicros":79200000,"currencyCode":"USD"}
/// giftable : true

Offers offersFromJson(String str) => Offers.fromJson(json.decode(str));
String offersToJson(Offers data) => json.encode(data.toJson());
class Offers {
  Offers({
      this.finskyOfferType, 
      this.listPrice, 
      this.retailPrice, 
      this.giftable,});

  Offers.fromJson(dynamic json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = json['listPrice'];
    retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    giftable = json['giftable'];
  }
  num? finskyOfferType;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  bool? giftable;
Offers copyWith({  num? finskyOfferType,
  ListPrice? listPrice,
  RetailPrice? retailPrice,
  bool? giftable,
}) => Offers(  finskyOfferType: finskyOfferType ?? this.finskyOfferType,
  listPrice: listPrice ?? this.listPrice,
  retailPrice: retailPrice ?? this.retailPrice,
  giftable: giftable ?? this.giftable,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['finskyOfferType'] = finskyOfferType;
    map['listPrice'] = listPrice;
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    map['giftable'] = giftable;
    return map;
  }

}

/// amountInMicros : 79200000
/// currencyCode : "USD"

RetailPrice retailPriceFromJson(String str) => RetailPrice.fromJson(json.decode(str));
String retailPriceToJson(RetailPrice data) => json.encode(data.toJson());
class RetailPrice {
  RetailPrice({
      this.amountInMicros, 
      this.currencyCode,});

  RetailPrice.fromJson(dynamic json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }
  num? amountInMicros;
  String? currencyCode;
RetailPrice copyWith({  num? amountInMicros,
  String? currencyCode,
}) => RetailPrice(  amountInMicros: amountInMicros ?? this.amountInMicros,
  currencyCode: currencyCode ?? this.currencyCode,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = amountInMicros;
    map['currencyCode'] = currencyCode;
    return map;
  }

}

/// amountInMicros : 99000000
/// currencyCode : "USD"

ListPrice listPriceFromJson(String str) => ListPrice.fromJson(json.decode(str));
String listPriceToJson(ListPrice data) => json.encode(data.toJson());
class ListPrice {
  ListPrice({
      this.amountInMicros, 
      this.currencyCode,});

  ListPrice.fromJson(dynamic json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }
  num? amountInMicros;
  String? currencyCode;
ListPrice copyWith({  num? amountInMicros,
  String? currencyCode,
}) => ListPrice(  amountInMicros: amountInMicros ?? this.amountInMicros,
  currencyCode: currencyCode ?? this.currencyCode,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = amountInMicros;
    map['currencyCode'] = currencyCode;
    return map;
  }

}

/// amount : 79.2
/// currencyCode : "USD"



/// amount : 99
/// currencyCode : "USD"


/// title : "Practical Goal Programming"
/// authors : ["Dylan Jones","Mehrdad Tamiz"]
/// publisher : "Springer Science & Business Media"
/// publishedDate : "2010-03-10"
/// description : "Practical Goal Programming is intended to allow academics and practitioners to be able to build effective goal programming models, to detail the current state of the art, and to lay the foundation for its future development and continued application to new and varied fields. Suitable as both a text and reference, its nine chapters first provide a brief history, fundamental definitions, and underlying philosophies, and then detail the goal programming variants and define them algebraically. Chapter 3 details the step-by-step formulation of the basic goal programming model, and Chapter 4 explores more advanced modeling issues and highlights some recently proposed extensions. Chapter 5 then details the solution methodologies of goal programming, concentrating on computerized solution by the Excel Solver and LINGO packages for each of the three main variants, and includes a discussion of the viability of the use of specialized goal programming packages. Chapter 6 discusses the linkages between Pareto Efficiency and goal programming. Chapters 3 to 6 are supported by a set of ten exercises, and an Excel spreadsheet giving the basic solution of each example is available at an accompanying website. Chapter 7 details the current state of the art in terms of the integration of goal programming with other techniques, and the text concludes with two case studies which were chosen to demonstrate the application of goal programming in practice and to illustrate the principles developed in Chapters 1 to 7. Chapter 8 details an application in healthcare, and Chapter 9 describes applications in portfolio selection."
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9781441957719"},{"type":"ISBN_10","identifier":"1441957715"}]
/// readingModes : {"text":true,"image":true}
/// pageCount : 180
/// printType : "BOOK"
/// categories : ["Business & Economics"]
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.11.11.0.preview.3"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=-TgNzYtVZVgC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=-TgNzYtVZVgC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com/books?id=-TgNzYtVZVgC&pg=PA76&dq=programming&hl=&cd=1&source=gbs_api"
/// infoLink : "https://play.google.com/store/books/details?id=-TgNzYtVZVgC&source=gbs_api"
/// canonicalVolumeLink : "https://play.google.com/store/books/details?id=-TgNzYtVZVgC"

VolumeInfo volumeInfoFromJson(String str) => VolumeInfo.fromJson(json.decode(str));
String volumeInfoToJson(VolumeInfo data) => json.encode(data.toJson());
class VolumeInfo {
  VolumeInfo({
      this.title, 
      this.authors, 
      this.publisher, 
      this.publishedDate, 
      this.description, 
      this.industryIdentifiers, 
      this.readingModes, 
      this.pageCount, 
      this.printType, 
      this.categories, 
      this.maturityRating, 
      this.allowAnonLogging, 
      this.contentVersion, 
      this.panelizationSummary, 
      this.imageLinks, 
      this.language, 
      this.previewLink, 
      this.infoLink, 
      this.canonicalVolumeLink,});

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
    imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  num? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;
VolumeInfo copyWith({  String? title,
  List<String>? authors,
  String? publisher,
  String? publishedDate,
  String? description,
  List<IndustryIdentifiers>? industryIdentifiers,
  ReadingModes? readingModes,
  num? pageCount,
  String? printType,
  List<String>? categories,
  String? maturityRating,
  bool? allowAnonLogging,
  String? contentVersion,
  PanelizationSummary? panelizationSummary,
  ImageLinks? imageLinks,
  String? language,
  String? previewLink,
  String? infoLink,
  String? canonicalVolumeLink,
}) => VolumeInfo(  title: title ?? this.title,
  authors: authors ?? this.authors,
  publisher: publisher ?? this.publisher,
  publishedDate: publishedDate ?? this.publishedDate,
  description: description ?? this.description,
  industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
  readingModes: readingModes ?? this.readingModes,
  pageCount: pageCount ?? this.pageCount,
  printType: printType ?? this.printType,
  categories: categories ?? this.categories,
  maturityRating: maturityRating ?? this.maturityRating,
  allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
  contentVersion: contentVersion ?? this.contentVersion,
  panelizationSummary: panelizationSummary ?? this.panelizationSummary,
  imageLinks: imageLinks ?? this.imageLinks,
  language: language ?? this.language,
  previewLink: previewLink ?? this.previewLink,
  infoLink: infoLink ?? this.infoLink,
  canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] = industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }

}

/// smallThumbnail : "http://books.google.com/books/content?id=-TgNzYtVZVgC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=-TgNzYtVZVgC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"

ImageLinks imageLinksFromJson(String str) => ImageLinks.fromJson(json.decode(str));
String imageLinksToJson(ImageLinks data) => json.encode(data.toJson());
class ImageLinks {
  ImageLinks({
      this.smallThumbnail, 
      this.thumbnail,});

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
  String? smallThumbnail;
  String? thumbnail;
ImageLinks copyWith({  String? smallThumbnail,
  String? thumbnail,
}) => ImageLinks(  smallThumbnail: smallThumbnail ?? this.smallThumbnail,
  thumbnail: thumbnail ?? this.thumbnail,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }

}

/// containsEpubBubbles : false
/// containsImageBubbles : false

PanelizationSummary panelizationSummaryFromJson(String str) => PanelizationSummary.fromJson(json.decode(str));
String panelizationSummaryToJson(PanelizationSummary data) => json.encode(data.toJson());
class PanelizationSummary {
  PanelizationSummary({
      this.containsEpubBubbles, 
      this.containsImageBubbles,});

  PanelizationSummary.fromJson(dynamic json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }
  bool? containsEpubBubbles;
  bool? containsImageBubbles;
PanelizationSummary copyWith({  bool? containsEpubBubbles,
  bool? containsImageBubbles,
}) => PanelizationSummary(  containsEpubBubbles: containsEpubBubbles ?? this.containsEpubBubbles,
  containsImageBubbles: containsImageBubbles ?? this.containsImageBubbles,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = containsEpubBubbles;
    map['containsImageBubbles'] = containsImageBubbles;
    return map;
  }

}

/// text : true
/// image : true

ReadingModes readingModesFromJson(String str) => ReadingModes.fromJson(json.decode(str));
String readingModesToJson(ReadingModes data) => json.encode(data.toJson());
class ReadingModes {
  ReadingModes({
      this.text, 
      this.image,});

  ReadingModes.fromJson(dynamic json) {
    text = json['text'];
    image = json['image'];
  }
  bool? text;
  bool? image;
ReadingModes copyWith({  bool? text,
  bool? image,
}) => ReadingModes(  text: text ?? this.text,
  image: image ?? this.image,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['image'] = image;
    return map;
  }

}

/// type : "ISBN_13"
/// identifier : "9781441957719"

IndustryIdentifiers industryIdentifiersFromJson(String str) => IndustryIdentifiers.fromJson(json.decode(str));
String industryIdentifiersToJson(IndustryIdentifiers data) => json.encode(data.toJson());
class IndustryIdentifiers {
  IndustryIdentifiers({
      this.type, 
      this.identifier,});

  IndustryIdentifiers.fromJson(dynamic json) {
    type = json['type'];
    identifier = json['identifier'];
  }
  String? type;
  String? identifier;
IndustryIdentifiers copyWith({  String? type,
  String? identifier,
}) => IndustryIdentifiers(  type: type ?? this.type,
  identifier: identifier ?? this.identifier,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['identifier'] = identifier;
    return map;
  }

}