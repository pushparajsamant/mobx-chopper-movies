// ignore_for_file: prefer_const_constructors

import 'package:chopper/chopper.dart';

part 'FetchApiData.chopper.dart';

@ChopperApi(baseUrl: '?apikey=3ad97de3&t=')
abstract class FetchApiData extends ChopperService {
  @Get(path: '{title}')
  Future<Response> fetchData(@Path('title') String title);
  @Post()
  Future<Response> postData(@Body() Map<String, dynamic> body);

  static FetchApiData create() {
    final client = ChopperClient(
      baseUrl: Uri.parse('http://www.omdbapi.com/'),
      services: [_$FetchApiData()],
      converter: JsonConverter(),
    );
    return _$FetchApiData(client);
  }
}
