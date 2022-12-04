import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';

import '../list_of_heroes.dart';

const publicKey = '42597bee717ef2847e9b63553f4aff0f';
const privateKey =
    'd6abde317808a2541471c2c57f5c21f3ee1decfd'; //TODO: Remove to .env file

class MarvelHeroesHttpRequest {
  Map<String, String> generateQueryParameters() {
    final ts = DateTime.now().toString();
    final hash =
        md5.convert(utf8.encode(ts + privateKey + publicKey)).toString();
    return {'ts': ts, 'hash': hash, 'apikey': publicKey};
  }

  List<HeroData> parseResponse(Response response) {
    List<HeroData> heroesData = [];
    final heroesFromResponse = response.data['data']['results'];
    for (var hero in heroesFromResponse) {
      String name = hero['name'];
      String image =
          hero['thumbnail']['path'] + '.' + hero['thumbnail']['extension'];
      String description = hero['description'];
      if ((description == '') || (description == ' ')) {
        description = 'I am $name';
      }
      heroesData
          .add(HeroData(name: name, image: image, description: description));
    }
    return heroesData;
  }

  Future<List<HeroData>> get() async {
    final response = await Dio().get(
        'http://gateway.marvel.com/v1/public/characters',
        queryParameters: generateQueryParameters());
    return parseResponse(response);
  }
}
