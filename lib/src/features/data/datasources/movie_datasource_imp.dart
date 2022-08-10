import 'dart:convert';
import 'package:movies_marvel/src/features/data/datasources/movie_datasource.dart';
import 'package:http/http.dart' as http;
import 'package:movies_marvel/src/features/data/models/movie_model.dart';

class MovieDatasourceImpl implements MovieDatasource {
  final http.Client client;

  MovieDatasourceImpl({required this.client});

  @override
  Future<MovieModel> getMoviesMarvelList() async {
    Uri url = Uri.parse('https://mcuapi.herokuapp.com/api/v1/movies');
    MovieModel result = MovieModel();
    try {
      final response = await http.get(url);
      final responseData = json.decode(response.body) as Map<String, dynamic>;
      result = MovieModel.fromJson(responseData);
    } catch (e) {
      rethrow;
    }
    return result;
  }
}
