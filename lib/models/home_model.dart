import 'dart:convert';

class Categarycard {
  final String image;
  final String text;
  Categarycard({
    required this.image,
    required this.text,
  });

  Categarycard copyWith({
    String? image,
    String? text,
  }) {
    return Categarycard(
      image: image ?? this.image,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'text': text,
    };
  }

  factory Categarycard.fromMap(Map<String, dynamic> map) {
    return Categarycard(
      image: map['image'] ?? '',
      text: map['text'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Categarycard.fromJson(String source) =>
      Categarycard.fromMap(json.decode(source));

  @override
  String toString() => 'Categarycard(image: $image, text: $text)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Categarycard && other.image == image && other.text == text;
  }

  @override
  int get hashCode => image.hashCode ^ text.hashCode;
}

class Topworkoutmodel {
  final String color;
  final String heading;
  final String dcr;
  final String bumi;
  final String buca;
  final String image;
  Topworkoutmodel({
    required this.color,
    required this.heading,
    required this.dcr,
    required this.bumi,
    required this.buca,
    required this.image,
  });

  Topworkoutmodel copyWith({
    String? color,
    String? heading,
    String? dcr,
    String? bumi,
    String? buca,
    String? image,
  }) {
    return Topworkoutmodel(
      color: color ?? this.color,
      heading: heading ?? this.heading,
      dcr: dcr ?? this.dcr,
      bumi: bumi ?? this.bumi,
      buca: buca ?? this.buca,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'color': color,
      'heading': heading,
      'dcr': dcr,
      'bumi': bumi,
      'buca': buca,
      'image': image,
    };
  }

  factory Topworkoutmodel.fromMap(Map<String, dynamic> map) {
    return Topworkoutmodel(
      color: map['color'] ?? '',
      heading: map['heading'] ?? '',
      dcr: map['dcr'] ?? '',
      bumi: map['bumi'] ?? '',
      buca: map['buca'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Topworkoutmodel.fromJson(String source) =>
      Topworkoutmodel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Topworkoutmodel(color: $color, heading: $heading, dcr: $dcr, bumi: $bumi, buca: $buca, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Topworkoutmodel &&
        other.color == color &&
        other.heading == heading &&
        other.dcr == dcr &&
        other.bumi == bumi &&
        other.buca == buca &&
        other.image == image;
  }

  @override
  int get hashCode {
    return color.hashCode ^
        heading.hashCode ^
        dcr.hashCode ^
        bumi.hashCode ^
        buca.hashCode ^
        image.hashCode;
  }
}
