import 'dart:math';

import 'package:hive/hive.dart';

import '../models/quote.dart';

abstract class IQuotesLocalDataSource {
  List<Quote> getLikedQuotes();
  List<Quote> getLocalQuotes();
  Quote getRandomLocalQuote();
  void saveQuote(Quote quote);
  void deleteQuote(int id);
}

class QuotesLocalDataSourcer implements IQuotesLocalDataSource {
  QuotesLocalDataSourcer({
    required this.box,
  }) : random = Random();

  final Box box;
  final Random random;

  @override
  List<Quote> getLikedQuotes() {
    return getLocalQuotes().where((quote) => quote.liked).toList();
  }

  @override
  void deleteQuote(int id) => box.delete(id);

  @override
  void saveQuote(Quote quote) => box.put(quote.id, quote.toMap());

  @override
  Quote getRandomLocalQuote() {
    final quotes = getLocalQuotes().where((quote) => !quote.liked).toList();
    return quotes.isEmpty
        ? defaultQuote
        : quotes[random.nextInt(quotes.length)];
  }

  @override
  List<Quote> getLocalQuotes() {
    return box.values
        .map((e) => Quote.fromMap(Map<String, dynamic>.from(e)))
        .toList();
  }
}
