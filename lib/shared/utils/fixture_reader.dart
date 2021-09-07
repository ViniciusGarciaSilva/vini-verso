import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

Future<String> fixture(String name) async {
  var dir = Directory.current.path;
  var file;
  try {
    file = await rootBundle.loadString('lib/mocks/jsons/$name.json');
    return file;
  } catch (error) {}
  try {
    file = File('$dir/lib/mocks/jsons/$name.json').readAsStringSync();
    return file;
  } catch (error) {}
  return '';
}
