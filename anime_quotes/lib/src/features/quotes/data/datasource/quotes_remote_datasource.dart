import 'package:dio/dio.dart';
import 'package:random_anime_quotes/src/features/quotes/data/models/quote.dart';

abstract class IQuotesRemoteDataSource {
  Future<Quote> getRandomQuote();
}

class QuotesRemoteDataSource implements IQuotesRemoteDataSource {
  QuotesRemoteDataSource({
    required this.client,
  });

  final Dio client;

  @override
  Future<Quote> getRandomQuote() async {
    try {
      final res = await client.get('quote');
      if (res.statusCode == 200) return Quote.fromMap(res.data);
      throw Exception();
    } catch (_) {
      rethrow;
    }
  }
}
