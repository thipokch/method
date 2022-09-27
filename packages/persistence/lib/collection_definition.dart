// ignore_for_file: invalid_use_of_protected_member

part of 'collection.dart';

abstract class DaoDefinition<DOM, CDOM, CDAO extends DaoObject>
    extends DaoObject {
  @protected
  List<String> definitionsIds;

  set definitions(List<CDAO> defObjs) => defObjs.map((e) => e.id).toList();

  @ignore
  List<CDAO> get definitions => Isar.getInstance()!
      .collection<CDAO>()
      .getAllByIndexSync('id', definitionsIds.map((e) => [e]).toList())
      .whereType<CDAO>()
      .toList();

  DaoDefinition({
    required List<CDAO> definitions,
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  }) : definitionsIds = definitions.map((e) => e.id).toList();
}

abstract class DaoDefinitionCollection<
    DOM extends DefineDefinitions<CDOM>,
    DAO extends DaoDefinition<DOM, CDOM, CDAO>,
    CDOM,
    CDAO extends DaoObject> extends Collection<DOM, DAO> {
  const DaoDefinitionCollection(super.driver);

  Collection<CDOM, CDAO> get childCollection;

  DAO Function({required DOM dom}) get parentToDao;
  DOM Function({required DAO dao}) get parentToDom;

  @override
  DAO toDao(DOM dom) => parentToDao(dom: dom)
    ..definitions = childCollection.toDaos(dom.definitions);

  @override
  DOM toDom(DAO dao) => parentToDom(dao: dao);

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
