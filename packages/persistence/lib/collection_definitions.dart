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

  IsarCollection<CDAO> get childCollection =>
      source.instance.collection<CDAO>();

  DAO Function({required DOM dom}) get parentToDao;
  DOM Function({required DAO dao, List<CDOM> definitions}) get parentToDom;

  @override
  DAO toDao(DOM dom) =>
      parentToDao(dom: dom)..definitions = childrenToDao(dom.definitions);

  @override
  DOM toDom(DAO dao) => parentToDom(
        dao: dao,
        definitions: getAllChildByIdSync(dao.definitionIds),
      );
  // ..definitions.addAll(getAllChildByIdSync(dao.definitionIds));

  CDAO Function({required CDOM dom}) get childToDao;
  List<CDAO> childrenToDao(List<CDOM> dom) =>
      dom.map((e) => childToDao(dom: e)).toList();

  CDOM Function({required CDAO dao}) get childToDom;
  List<CDOM> childrenToDom(List<CDAO> dao) =>
      dao.map((e) => childToDom(dao: e)).toList();

  Future<CDOM?> getChildById(String id) => childCollection.getByIndex(
        'id',
        [id],
      ).then((dao) => dao != null ? childToDom(dao: dao) : null);

  Future<List<CDOM?>> getAllChildById(List<String> ids) => childCollection
      .getAllByIndex(
        'id',
        ids.map((e) => [e]).toList(),
      )
      .then((dao) => childrenToDom(dao.whereType<CDAO>().toList()));

  List<CDOM> getAllChildByIdSync(List<String> ids) =>
      childrenToDom(childCollection
          .getAllByIndexSync(
            'id',
            ids.map((e) => [e]).toList(),
          )
          .whereType<CDAO>()
          .toList());

  @override
  Future<List<int>> putAll(List<DOM> doms) async {
    await write(() => childCollection.putAll(
          childrenToDao(doms.expand((element) => element.definitions).toList()),
        ));

    return super.putAll(doms);
  }

  // @override
  // Future<int> put(DOM model) async {
  //   await childCollection.putAll(childToDao(model))

  //   return super.put(model);
  // }
}
