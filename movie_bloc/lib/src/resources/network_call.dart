import 'dart:convert';
import 'package:http/http.dart' as http ;
import 'package:movie_bloc/src/models/item_model.dart';

class NetworkCall{

  Future<ItemModel> getMovies() async
  {
    var client = http.Client();
    var itemModel;

    var url = Uri.parse("http://api.themoviedb.org/3/movie/popular?api_key=9cc25582b0179b583c0bc8eb9e144b78");

    var response = await client.get(url);
    if(response.statusCode == 200)
    {
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
      itemModel = ItemModel.fromJson(jsonMap);
      return itemModel;
    }
    else
    {
        throw Exception('Failed to load post');
    }
  }

}