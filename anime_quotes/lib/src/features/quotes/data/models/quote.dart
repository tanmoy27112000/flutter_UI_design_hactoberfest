import 'dart:convert';

class Quote {
  final int id;
  final String said;
  final String quote;
  final String anime;
  final bool liked;

  const Quote({
    required this.id,
    required this.said,
    required this.quote,
    required this.anime,
    this.liked = false,
  });

  Quote copyWith({
    int? id,
    String? said,
    String? quote,
    String? anime,
    bool? liked,
  }) {
    return Quote(
      id: id ?? this.id,
      said: said ?? this.said,
      quote: quote ?? this.quote,
      anime: anime ?? this.anime,
      liked: liked ?? this.liked,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'said': said,
      'quote': quote,
      'anime': anime,
      'liked': liked,
    };
  }

  factory Quote.fromMap(Map<String, dynamic> map) {
    return Quote(
      id: map['_id']?.toInt() ?? 0,
      said: map['said'] ?? '',
      quote: map['quote'] ?? '',
      anime: map['anime'] ?? '',
      liked: map['liked'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Quote.fromJson(String source) => Quote.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Quote(id: $id, said: $said, quote: $quote, anime: $anime, liked: $liked)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Quote &&
        other.id == id &&
        other.said == said &&
        other.quote == quote &&
        other.anime == anime &&
        other.liked == liked;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        said.hashCode ^
        quote.hashCode ^
        anime.hashCode ^
        liked.hashCode;
  }
}

const defaultQuote = Quote(
  id: 0,
  said: 'Dash',
  quote:
      'Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.',
  anime: 'Flutter: The Animation',
);
