import 'dart:io';
import 'dart:math';
import 'package:intl/intl.dart';
// ignore: implementation_imports, import_of_legacy_library_into_null_safe
import 'package:convert/src/hex.dart';
import 'package:flutter/material.dart';
import 'dart:convert' show Utf8Encoder;
// ignore: import_of_legacy_library_into_null_safe
import 'package:crypto/crypto.dart' show md5;
import 'package:path_provider/path_provider.dart';

class UtilityService {
  Future<DateTime?> pickDate(BuildContext context) async {
    var _result = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        lastDate: DateTime(2030, 12, 31),
        firstDate: DateTime(2000, 01, 01));

    return _result;
  }

  Future<String> getSystemPath({String params = ''}) async {
    var _directory = await getApplicationDocumentsDirectory();

    var _result =
        await Directory('${_directory.path}/$params').create(recursive: true);

    return _result.absolute.path;
  }

  void deleteSystemPath(String dirPath) {
    final dir = Directory(dirPath);
    dir.deleteSync(recursive: true);
  }

  String encryptor(String input) {
    final _encodeValue = new Utf8Encoder().convert(input);
    final _digest = md5.convert(_encodeValue);
    return hex.encode(_digest.bytes);
  }

  int generateNumber() {
    final rInstance = new Random.secure();
    var _result = rInstance.nextDouble() * 100000000;
    while (_result < 10000000) {
      _result *= 10;
    }
    return _result.toInt();
  }

  String dateFormatter(String dateParams, {bool isDisplay = true}) {
    String value;
    if (isDisplay) {
      value = DateFormat.yMMMd().format(DateTime.parse(dateParams));
    } else {
      value =
          DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.parse(dateParams));
    }

    return value;
  }

  Future<bool?> checkConnections() async {
    bool? connection;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        connection = true;
      }
    } on SocketException catch (_) {
      print('not connected');
      connection = false;
    }
    return connection;
  }

  String conditionalEndPointPrefix() {
    if (Platform.isAndroid) return '?';

    return '';
  }
}
