import 'package:core/model/task.dart';
import 'package:core/model/task_definition.dart';

class Content {
  const Content._();

  static const taskContext = Task.converge(
    icon: "",
    name: "Identify Context",
    description: "Take in your surroundings.",
    definitions: <TaskDefinition>[
      TaskDefinition.note(
        name: "What’s going on?",
        description:
            "Where am I? Who am I with? When did I start to notice a change in my emotion?",
        collectionSlug: "",
        hierarchyPath: "",
        id: "",
        uuid: "",
      ),
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );

  static const taskCoreBelief = Task.converge(
    icon: "",
    name: "Identify Context",
    description: "If that were true what would it mean to you?",
    definitions: <TaskDefinition>[
      TaskDefinition.note(
        name: "If that were true,\nwhat would it mean to you?",
        description: "",
        collectionSlug: "",
        hierarchyPath: "",
        id: "",
        uuid: "",
      ),
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );
}
