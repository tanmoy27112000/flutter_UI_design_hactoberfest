import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_anime_quotes/src/features/quotes/data/models/quote.dart';

import 'package:random_anime_quotes/src/features/quotes/logic/quote_state/quote_state.dart';
import '../../data/datasource/quotes_local_datasource.dart';

class LikedQuotesNotifier extends StateNotifier<List<Quote>> {
  LikedQuotesNotifier({
    required this.localDataSource,
    required this.quoteState,
  }) : super(localDataSource.getLikedQuotes());

  final IQuotesLocalDataSource localDataSource;
  final QuoteState quoteState;

  delete(int id) {
    localDataSource.deleteQuote(id);
    state = localDataSource.getLikedQuotes();
  }
}
