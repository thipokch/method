import 'package:core/model/exercise.dart';
import 'package:core/model/task.dart';
import 'package:core/model/task_definition.dart';

class Content {
  const Content._();

  //
  // TASKS
  //

  static const taskNote = Task.linear(
    icon: "✍️",
    name: "",
    description: "",
    definitions: <TaskDefinition>[
      TaskDefinition.note(
        name: "",
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

  static const taskContext = Task.converge(
    icon: "👁",
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

  static const taskDistortion = Task.diverge(
    icon: "",
    name: "Identify Distortions",
    description: "description",
    definitions: <TaskDefinition>[],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );

  static const taskCoreBelief = Task.converge(
    icon: "",
    name: "Identify Core Belief",
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

  static const taskEmotion = Task.converge(
    icon: "",
    name: "Identify Emotion",
    description: "Express how you're feeling...",
    definitions: <TaskDefinition>[
      TaskDefinition.note(
        name: "How am I feeling?",
        description:
            "How strongly do I want to avoid or approach this emotion? How is my body responding to it? Where do I feel these sensations?",
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

  static const taskNeed = Task.converge(
    icon: "",
    name: "Identify Emotion",
    description: "Express how you're feeling...",
    definitions: <TaskDefinition>[],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );

  static const taskAction = Task.diverge(
    icon: "",
    name: "Identify Emotion",
    description: "Express how you're feeling...",
    definitions: <TaskDefinition>[],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );

  //
  // EXECISE
  //

  static const exerciseNote = Exercise(
    icon: "",
    name: "Quick Notes",
    description: "Jot your thoughts down...",
    definitions: [taskNote],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );

  static const exerciseMood = Exercise(
    icon: "",
    name: "Mood Check",
    description: "Jot your thoughts down...",
    definitions: [
      taskContext,
      taskEmotion,
      taskNeed,
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );

  static const exerciseThought = Exercise(
    icon: "",
    name: "Thought Check",
    description: "description",
    definitions: [
      taskContext,
      taskCoreBelief,
      // taskDistortion,
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );

  static const exerciseAct = Exercise(
    icon: "",
    name: "Thought Check",
    description: "description",
    definitions: [
      taskContext,
      taskNeed,
      taskDistortion,
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );
}
