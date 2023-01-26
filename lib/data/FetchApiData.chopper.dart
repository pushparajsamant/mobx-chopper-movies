// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FetchApiData.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$FetchApiData extends FetchApiData {
  _$FetchApiData([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FetchApiData;

  @override
  Future<Response<dynamic>> fetchData(String title) {
    final Uri $url = Uri.parse('?apikey=3ad97de3&t=/${title}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postData(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('?apikey=3ad97de3&t=');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
