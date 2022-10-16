import 'package:movie_bloc/src/models/item_model.dart';
import 'package:movie_bloc/src/resources/network_call.dart';

class Repository
{
  final moviesApiProvider = NetworkCall();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.getMovies();

}