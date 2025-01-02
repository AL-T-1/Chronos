import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketService {
  late WebSocketChannel _channel;

  Future<void> connect(String url) async {
    _channel = WebSocketChannel.connect(Uri.parse(url));
  }

  Future<Map<String, dynamic>> signIn(String email, String password) async {
    final request = jsonEncode({'action': 'sign_in', 'email': email, 'password': password});
    _channel.sink.add(request);

    final response = await _channel.stream.first;
    return jsonDecode(response);
  }

  Future<Map<String, dynamic>> register(String username, String email, String password) async {
    final request = jsonEncode({'action': 'register', 'username': username, 'email': email, 'password': password});
    _channel.sink.add(request);

    final response = await _channel.stream.first;
    return jsonDecode(response);
  }

  Stream<List<Map<String, dynamic>>> getTasks() {
    final request = jsonEncode({'action': 'get_tasks'});
    _channel.sink.add(request);

    return _channel.stream.map((response) {
      return List<Map<String, dynamic>>.from(jsonDecode(response)['tasks']);
    });
  }

  void close() {
    _channel.sink.close();
  }
}
