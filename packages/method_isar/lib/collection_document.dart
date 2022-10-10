// ignore_for_file: invalid_use_of_protected_member

part of 'collection.dart';

mixin DaoDocument<DAO extends Dao> on Dao {
  final template = IsarLink<DAO>();

  DateTime get createdAt;
  DateTime get readAt;
  DateTime get updatedAt;
  DateTime? get commitedAt;
  DateTime? get deletedAt;
}

abstract class DaoDocumentCollection<
    DOM extends Document<TDOM, Object>,
    DAO extends DaoDocument<TDAO>,
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

  // no override delete overrides for documents <-> template
}
