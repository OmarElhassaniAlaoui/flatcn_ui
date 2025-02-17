import 'dart:convert';
import 'package:flutcn_ui/src/core/services/api_service.dart';
import 'package:http/http.dart' as http; 

class HttpServiceImpl extends ApiService {
  final String baseUrl;
  final Map<String, String> defaultHeaders;

  HttpServiceImpl({
    required this.baseUrl,
    this.defaultHeaders = const {
      "apikey": "your_api_key_here",
      "Content-Type": "application/json",
    },
  });

  @override
  Future<ApiResponse> get(
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint').replace(queryParameters: query);
    final response = await http.get(
      uri,
      headers: {...defaultHeaders, ...?headers},
    );
    return _httpToApiResponse(response);
  }

  @override
  Future<ApiResponse> post(
    String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final response = await http.post(
      uri,
      headers: {...defaultHeaders, ...?headers},
      body: jsonEncode(data),
    );
    return _httpToApiResponse(response);
  }

  @override
  Future<ApiResponse> update(
    String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint').replace(queryParameters: query);
    final response = await http.patch(
      uri,
      headers: {...defaultHeaders, ...?headers},
      body: jsonEncode(data),
    );
    return _httpToApiResponse(response);
  }

  @override
  Future<ApiResponse> put(
    String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint').replace(queryParameters: query);
    final response = await http.put(
      uri,
      headers: {...defaultHeaders, ...?headers},
      body: jsonEncode(data),
    );
    return _httpToApiResponse(response);
  }

  @override
  Future<ApiResponse> delete(
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint').replace(queryParameters: query);
    final response = await http.delete(
      uri,
      headers: {...defaultHeaders, ...?headers},
    );
    return _httpToApiResponse(response);
  }

  ApiResponse _httpToApiResponse(http.Response response) {
    return ApiResponse(
      jsonDecode(response.body),
      response.statusCode,
      response.reasonPhrase,
    );
  }
}