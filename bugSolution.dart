```dart
Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return jsonData;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null; // Or throw a custom exception for better error handling
    }
  } on SocketException catch (e) {
    print('Network error: $e');
    return null; // Or throw a custom exception
  } on FormatException catch (e) {
    print('JSON decoding error: $e');
    return null; // Or throw a custom exception
  } catch (e) {
    print('An unexpected error occurred: $e');
    return null; // Or throw a custom exception
  }
}
```