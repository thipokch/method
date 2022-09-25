// ignore_for_file: invalid_use_of_protected_member

part of 'collection.dart';

abstract class DaoWithDefinitions<DOM, CDOM, CDAO extends Dao<CDOM>>
    extends Dao<DOM> {
  @protected
  List<String> definitionIds = [];

  DaoWithDefinitions({
    required super.collectionSlug,
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  });

  // ignore: invalid_annotation_target
  @ignore
  set definitions(List<CDAO> definitions) =>
      definitionIds = definitions.map((e) => e.id).toList();

  @ignore
  List<CDAO> get definitions => Isar.getInstance()!
      .collection<CDAO>()
      .getAllByIndexSync('id', definitionIds.map((e) => [e]).toList())
      .whereType<CDAO>()
      .toList();
}

abstract class CollectionWithDefinitions<
    DOM extends Define<CDOM>,
    DAO extends DaoWithDefinitions<DOM, CDOM, CDAO>,
    CDOM,
    CDAO extends Dao<CDOM>> extends Collection<DOM, DAO> {
  const CollectionWithDefinitions(super.driver);

  Collection<CDOM, CDAO> get childCollection;

  DAO Function({required DOM dom}) get parentToDao;
  DOM Function({required DAO dao, List<CDOM> definitions}) get parentToDom;

  @override
  DAO toDao(DOM dom) => parentToDao(dom: dom)
    ..definitions = childCollection.toDaos(dom.definitions);

  @override
  DOM toDom(DAO dao) => parentToDom(
        dao: dao,
        definitions: childCollection.getAllSync(dao.definitionIds),
      );

  @override
  Future<int> put(DOM dom) async {
    await childCollection.putAll(dom.definitions);

    return super.put(dom);
  }

  @override
  Future<List<int>> putAll(List<DOM> doms) async {
    await childCollection
        .putAll(doms.expand((element) => element.definitions).toList());

    return super.putAll(doms);
  }
}
