import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:random_anime_quotes/src/core/env/env_config.dart';
import 'package:random_anime_quotes/src/features/quotes/data/models/quote.dart';
import 'package:random_anime_quotes/src/features/quotes/logic/state_notifiers/quote_notifier.dart';
import 'package:random_anime_quotes/src/features/quotes/logic/quote_state/quote_state.dart';
import 'package:random_anime_quotes/src/features/settings/logic/providers.dart';
import 'package:screenshot/screenshot.dart';

import '../data/datasource/quotes_local_datasource.dart';
import '../data/datasource/quotes_remote_datasource.dart';
import 'state_notifiers/liked_quotes_notifier.dart';

//* Quotes Box
final quotesBoxProvider = Provider<Box>((_) => throw UnimplementedError());

//* ScreenshotController
final screenshotControllerProvider = Provider((_) => ScreenshotController());

//* Client: Dio
final clientProvider = Provider<Dio>((_) {
  final options = BaseOptions(
    baseUrl: EnvConfig.apiUrl,
    headers: {'Auth': EnvConfig.apiToken},
  );
  return Dio(options);
});

//* Local Data Source
final quotesLocalDataSourceProvider = Provider<IQuotesLocalDataSource>(
  (ref) => QuotesLocalDataSourcer(box: ref.watch(quotesBoxProvider)),
);

//* Remote Data Source
final quotesRemoteDataSourceProvider = Provider<IQuotesRemoteDataSource>(
  (ref) => QuotesRemoteDataSource(client: ref.watch(clientProvider)),
);

final quoteProvider = StateNotifierProvider<QuoteNotifier, QuoteState>((ref) {
  return QuoteNotifier(
    translator: ref.read(translatorProvider),
    screenshotController: ref.read(screenshotControllerProvider),
    localDataSource: ref.read(quotesLocalDataSourceProvider),
    remoteDataSource: ref.read(quotesRemoteDataSourceProvider),
  )..getQuote();
});

final likedQuotesProvider =
    StateNotifierProvider<LikedQuotesNotifier, List<Quote>>((ref) {
  return LikedQuotesNotifier(
    localDataSource: ref.watch(quotesLocalDataSourceProvider),
    quoteState: ref.watch(quoteProvider),
  );
});
