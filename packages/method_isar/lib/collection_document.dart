// ignore_for_file: invalid_use_of_protected_member

part of 'collection.dart';

mixin DaoTemplate<DAO extends Dao> on Dao {
  final template = IsarLink<DAO>();
}

abstract class DaoDocumentCollection<
    DOM extends Document<TDOM, Object>,
    DAO extends DaoTemplate<TDAO>,
    TDOM extends Identify,
    TDAO extends DaoObject> extends Collection<DOM, DAO> {
  const DaoDocumentCollection(super.driver);

  IsarCollection<TDAO> get templateCollection;

  @override
  Future<int> put(DOM dom) => templateCollection
      .getByIndex('id', [dom.template.id])
      .then((tdao) => toDao(dom)..template.value = tdao)
      .then((dao) => write(() async {
            final putResult = await collection.putByIndex('id', dao);
            await dao.template.save();

            return putResult;
          }));

  // @override
  // Future<int> put(DOM dom) async =>
  //     write(() => this.collection.putByIndex('id', toDao(dom)), silent: true)
  //       ..then((dbid) => this.collection.get(dbid))
  //           .then((dao) => dao!)
  //           .then((dao) => dao
  //             ..template.value =
  //                 templateCollection.getByIndexSync('id', [dom.template.id]))
  //           .then((dao) => write(() => dao.template.save()));

  @override
  Future<List<int>> putAll(List<DOM> doms) => templateCollection
      .getAllByIndex('id', [doms.map((e) => e.template).toList()])
      .then((tdaos) => toDaos(doms)
        ..asMap().entries.map((e) => e.value.template.value = tdaos[e.key]))
      .then((daos) => write(
            () async {
              final putResult = await collection.putAllByIndex('id', daos);

              for (var e in daos) {
                await e.template.save();
              }

              return putResult;
            },
          ));

  // @override
  // Future<List<int>> putAll(List<DOM> doms) async => write(
  //       () => this.collection.putAllByIndex('id', toDaos(doms)),
  //       silent: true,
  //     )..then((dbids) => this.collection.getAll(dbids))
  //           .then((daos) => daos.whereType<DAO>().toList())
  //           .then((daos) {
  //         final daosExercise = templateCollection.getAllByIndexSync(
  //           'id',
  //           doms.map((e) => [e.template.id]).toList(),
  //         );

  //         daos.asMap().entries.forEach((e) {
  //           e.value.template.value = daosExercise[e.key];
  //           write(() => e.value.template.save());
  //         });
  //       });
}
