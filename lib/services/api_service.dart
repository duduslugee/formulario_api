import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // Substitua pela URL do seu projeto MockAPI
  final String _baseUrl = 'https://67f8c4ef2466325443edb7c9.mockapi.io/api/v1/users';

  // Envia dados para o MockAPI (POST)
  Future<void> postData(Map<String, String> data) async {
    try {
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data),
      );

      if (response.statusCode == 201) {
        return;
      } else {
        throw Exception('Falha ao enviar dados: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      throw Exception('Erro na requisição: $e');
    }
  }

  // Busca todos os dados do MockAPI (GET)
  Future<List<Map<String, dynamic>>> getData() async {
    try {
      final response = await http.get(
        Uri.parse(_baseUrl),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.cast<Map<String, dynamic>>();
      } else {
        throw Exception('Falha ao buscar dados: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      throw Exception('Erro na requisição: $e');
    }
  }
}