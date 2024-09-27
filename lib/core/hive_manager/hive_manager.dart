import 'dart:async';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart' as flutter;

abstract class HiveManager<T> {
  String get boxName;

  Box<T> get box => Hive.box<T>(boxName);

  T getIfSaved(T m) {
    return box.values.firstWhere(
        (test) => (test as dynamic)?.id == (m as dynamic)?.id,
        orElse: () => m);
  }

  bool isSaved(T m) {
    return box.values.contains(m);
  }

  List<T> getAllSaved() => box.values.toList();

  Future<bool> addOrRemove(HiveObject m) async {
    if (m.isInBox) {
      await m.delete();
      return false;
    } else {
      await box.add(m as T);
      await m.save();
      return true;
    }
  }
}

Future<void> setupHive() async {
  //initFlutter
  await flutter.Hive.initFlutter();
}
