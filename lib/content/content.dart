import 'package:core/model/exercise.dart';
import 'package:core/model/task.dart';
import 'package:core/model/task_definition.dart';
import 'package:core/abstract/present.dart';
import 'package:flutter/material.dart';

class Content {
  const Content._();

  //
  // PRESENTS
  //

  static const a = Presentation(
    seed: 1800.0,
    colorA: Color.fromARGB(255, 230, 212, 224),
    colorB: Color.fromARGB(255, 241, 248, 204),
    colorC: Color.fromARGB(255, 232, 166, 182),
    colorD: Color.fromARGB(255, 166, 168, 233),
  );

  static const b = Presentation(
    seed: 400.0,
    colorA: Color.fromARGB(255, 222, 224, 102),
    colorB: Color.fromARGB(255, 232, 119, 050),
    colorC: Color.fromARGB(255, 230, 157, 063),
    colorD: Color.fromARGB(255, 237, 90, 49),
  );

  static const c = Presentation(
    seed: 2048.0,
    colorA: Color.fromARGB(255, 198, 181, 061),
    colorB: Color.fromARGB(255, 151, 188, 059),
    colorC: Color.fromARGB(255, 087, 092, 070),
    colorD: Color.fromARGB(255, 147, 188, 059),
  );

  static const d = Presentation(
    seed: 8192.0,
    colorA: Color.fromARGB(255, 185, 142, 200),
    colorB: Color.fromARGB(255, 176, 218, 255),
    colorC: Color.fromARGB(255, 142, 064, 175),
    colorD: Color.fromARGB(255, 207, 075, 135),
  );

  static const e = Presentation(
    seed: 9064.0,
    colorA: Color.fromARGB(255, 150, 162, 255),
    colorB: Color.fromARGB(255, 218, 203, 185),
    colorC: Color.fromARGB(255, 150, 162, 255),
    colorD: Color.fromARGB(255, 195, 255, 238),
  );

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
    description: "Space for messy thoughts.",
    definitions: [taskNote],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
    presentation: a,
  );

  static const exerciseMood = Exercise(
    icon: "",
    name: "Mood Check",
    description: "Uncover unmet needs.",
    definitions: [
      taskContext,
      taskEmotion,
      taskNeed,
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
    presentation: b,
  );

  static const exerciseThought = Exercise(
    icon: "",
    name: "Thought Check",
    description: "Spot patterns and fallacies.",
    definitions: [
      taskContext,
      taskCoreBelief,
      // taskDistortion,
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
    presentation: e,
  );

  static const exerciseAct = Exercise(
    icon: "",
    name: "Act Check",
    description: "Respond, don't react.",
    definitions: [
      taskContext,
      taskNeed,
      taskDistortion,
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
    presentation: c,
  );
}
