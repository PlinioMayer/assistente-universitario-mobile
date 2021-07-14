import 'package:localstore/localstore.dart';

import 'disciplina.dart';

abstract class DisciplinaStore {
  static final String _collection = 'disciplina';
  static final _db = Localstore.instance;

  static Disciplina create(Disciplina disciplina) {
    final String id = _db.collection(_collection).doc().id;

    disciplina.id = id;

    _db.collection(_collection).doc(id).set(disciplina.toMap());

    return disciplina;
  }

  static Disciplina update(String id, Disciplina disciplina) {
    _db.collection(_collection).doc(id).set(disciplina.toMap());
    return disciplina;
  }

  static Future<Disciplina?> find(String id) async {
    final Map<String, dynamic>? map = await _db.collection(_collection).doc(id).get();

    if (map == null) {
      return null;
    }

    return Disciplina.fromMap(map);
  }

  static Future<List<Disciplina>> list() async {
    final List<Disciplina> list = [];

    await for (Map<String, dynamic> map in _db.collection(_collection).stream) {
      list.add(Disciplina.fromMap(map));
    }

    return list;
  }
}
