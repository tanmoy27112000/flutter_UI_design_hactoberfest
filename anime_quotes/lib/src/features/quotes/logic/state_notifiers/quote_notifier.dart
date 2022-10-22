import 'dart:io';
import 'dart:typed_data';

import 'package:clipboard/clipboard.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:random_anime_quotes/src/features/quotes/data/models/quote.dart';
import 'package:random_anime_quotes/src/features/quotes/logic/quote_state/quote_state.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../../../settings/logic/translator.dart';
import '../../data/datasource/quotes_local_datasource.dart';
import '../../data/datasource/quotes_remote_datasource.dart';

class QuoteNotifier extends StateNotifier<QuoteState> {
  QuoteNotifier({
    required this.screenshotController,
    required this.translator,
    required this.localDataSource,
    required this.remoteDataSource,
  }) : super(const QuoteState.loading());

  final IQuotesLocalDataSource localDataSource;
  final IQuotesRemoteDataSource remoteDataSource;
  final ScreenshotController screenshotController;
  final Translator translator;

  /// Get a new [Quote], if remote data source is not available
  /// Use remote data source
  Future<void> getQuote() async {
    state = const QuoteState.loading();
    try {
      final quote = await remoteDataSource.getRandomQuote();
      state = QuoteState.data(quote: quote);
      localDataSource.saveQuote(quote);
    } catch (_) {
      final quote = localDataSource.getRandomLocalQuote();
      state = QuoteState.data(quote: quote);
    }
  }

  /// Like a [Quote]
  void like(Quote quote) {
    Quote newQuote = quote.copyWith(liked: !quote.liked);
    state = QuoteState.data(quote: newQuote);

    if (newQuote.liked) localDataSource.saveQuote(newQuote);
  }

  /// Copy a [Quote] to clipboard.
  Future<void> copy(Quote quote) async {
    try {
      await FlutterClipboard.copy(
        '${quote.quote}\n${quote.said}\n${quote.anime}',
      );
      await Fluttertoast.showToast(msg: 'Copied!');
    } catch (_) {
      await Fluttertoast.showToast(msg: 'Couldn\'t copy');
    }
  }

  /// Translate a [Quote] to the specified language.
  Future<void> translate(Quote quote) async {
    state = const QuoteState.loading();
    try {
      final translatedQuote = await translator.translateQuote(quote.quote);
      Quote newQuote = quote.copyWith(quote: translatedQuote);
      state = QuoteState.data(quote: newQuote);
      if (newQuote.liked) localDataSource.saveQuote(newQuote);
    } catch (_) {
      state = QuoteState.data(quote: quote);
    }
  }

  /// Share a Screen Shot of a [Quote]
  Future<void> share() async {
    Uint8List? capture = await screenshotController.capture();

    if (capture != null) {
      final directory = await getTemporaryDirectory();
      final path = '${directory.path}/quote.png';
      final image = await File(path).create();
      await image.writeAsBytes(capture);
      await Share.shareFiles([image.path]);
      return;
    }

    await Fluttertoast.showToast(msg: 'Couldn\'t share');
  }
}
