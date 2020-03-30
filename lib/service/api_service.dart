import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

// ignore: non_constant_identifier_names
String BASE_URL = 'https://www.reddit.com/';

abstract class APIService {
  Future<Map<String, dynamic>> get(String url,
      {Map<String, String> params, bool useAuthHeaders = true}) async {
    try {
      var data = await http.get(_getUrlWithParams(url, params: params),
          headers: await _getHeaders(useAuthHeaders: useAuthHeaders));
      return _getResponse(data);
    } catch (e) {
      return null;
    }
  }

  Future<Map<String, dynamic>> post(String url,
      {@required Map<String, String> body, bool useAuthHeaders = true}) async {
    final response = await http.post(_getUrl(url),
        headers: await _getHeaders(useAuthHeaders: useAuthHeaders), body: body);
    return _getResponse(response);
  }

  Future<Map<String, dynamic>> put(String url,
      {@required Map<String, String> body, bool useAuthHeaders = true}) async {
    final response = await http.put(_getUrl(url),
        headers: await _getHeaders(useAuthHeaders: useAuthHeaders), body: body);

    return _getResponse(response);
  }

  // Helper Methods for API Services
  String _getUrl(String url) {
    return BASE_URL + url;
  }

  Future<Map<String, String>> _getHeaders({bool useAuthHeaders = true}) async {
    Map<String, String> map = Map<String, String>();

//    if (useAuthHeaders) {
//      map['Authorization'] =
//          'bearer ${await preferencesService.getAuthToken()}';
//    }

    return map;
  }

  String _getUrlWithParams(String url, {Map<String, String> params}) {
    var absUrl = _getUrl(url);

    if (params != null) {
      var paramsString = '';
      params.forEach((key, value) {
        paramsString += '&$key=$value';
      });

      return absUrl + '?' + paramsString.substring(1);
    }

    return absUrl;
  }

  Map<String, dynamic> _getResponse(http.Response response) {
    if (response.body == null || response.body.trim().isEmpty) {
      return null;
    }
    final Map<String, dynamic> body = json.decode(response.body);
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw Exception(body['message']);
    }

    return body;
  }
}
