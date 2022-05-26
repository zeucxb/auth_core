import 'dart:convert';

String generateKey(String seed) => base64Encode(utf8.encode(seed));
