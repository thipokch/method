// ignore_for_file: invalid_use_of_protected_member

part of 'collection.dart';

mixin DaoTemplate<DAO extends Dao> on Dao {
  final template = IsarLink<DAO>();
}

mixin DaoTemplateCollection<
    DOM extends DefineTemplate<TDOM>,
    DAO extends DaoTemplate<TDAO>,
    TDOM extends Identify,
    TDAO extends DaoObject> on Collection<DOM, DAO> {
  IsarCollection<TDAO> get templateCollection;

  @override
  Future<int> put(DOM dom) async =>
      write(() => this.collection.putByIndex('id', toDao(dom)), silent: true)
        ..then((dbid) => this.collection.get(dbid))
            .then((dao) => dao!)
            .then((dao) => dao
              ..template.value =
                  templateCollection.getByIndexSync('id', [dom.template.id]))
            .then((dao) => write(() => dao.template.save()));
  @override
  Future<List<int>> putAll(List<DOM> doms) async => write(
        () => this.collection.putAllByIndex('id', toDaos(doms)),
        silent: true,
      )..then((dbids) => this.collection.getAll(dbids))
            .then((daos) => daos.whereType<DAO>().toList())
            .then((daos) {
          final daosExercise = templateCollection.getAllByIndexSync(
            'id',
            doms.map((e) => [e.template.id]).toList(),
          );

          daos.asMap().entries.forEach((e) {
            e.value.template.value = daosExercise[e.key];
            write(() => e.value.template.save());
          });
        });
}