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

  static const pink = Presentation(
    seed: 1800.0,
    colorLighter: Color.fromARGB(255, 242, 242, 204),
    colorLight: Color.fromARGB(255, 204, 177, 195),
    colorDark: Color.fromARGB(255, 232, 166, 182),
    colorDarker: Color.fromARGB(255, 149, 152, 238),
  );

  static const yellow = Presentation(
    seed: 400.0,
    colorLighter: Color.fromARGB(255, 222, 224, 102),
    colorLight: Color.fromARGB(255, 255, 191, 106),
    colorDark: Color.fromARGB(255, 232, 119, 050),
    colorDarker: Color.fromARGB(255, 237, 90, 49),
  );

  static const c = Presentation(
    seed: 2048.0,
    colorLighter: Color.fromARGB(255, 219, 226, 143),
    colorLight: Color.fromARGB(255, 151, 188, 059),
    colorDark: Color.fromARGB(255, 087, 092, 070),
    colorDarker: Color.fromARGB(255, 147, 188, 059),
  );

  static const purple = Presentation(
    seed: 8192.0,
    colorLighter: Color.fromARGB(255, 185, 142, 200),
    colorLight: Color.fromARGB(255, 176, 218, 255),
    colorDark: Color.fromARGB(255, 142, 064, 175),
    colorDarker: Color.fromARGB(255, 207, 075, 135),
  );

  static const e = Presentation(
    seed: 4096.0,
    colorLighter: Color.fromARGB(255, 184, 229, 231),
    colorLight: Color.fromARGB(255, 150, 162, 255),
    colorDark: Color.fromARGB(255, 218, 203, 185),
    colorDarker: Color.fromARGB(255, 150, 162, 255),
  );

  //
  // TASKS
  //

  static const taskNote = Task.linear(
    icon: "✏️",
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
    icon: "🌤️",
    name: "Recount Context",
    description: "What’s going on?",
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
    icon: "🤡",
    name: "Spot Distortions",
    description: "Is it true?",
    definitions: <TaskDefinition>[],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );

  static const taskCoreBelief = Task.converge(
    icon: "🕷",
    name: "Examine Core Belief",
    description: "What if it's true?",
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
    icon: "🫦",
    name: "Discern Sensations",
    description: "How am I feeling?",
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
    icon: "❤️‍🔥",
    name: "Universal Needs",
    description: "What's your body telling you?",
    definitions: <TaskDefinition>[],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
  );

  static const taskAction = Task.diverge(
    icon: "🎯",
    name: "Set Intentions",
    description: "What can you do?",
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
    icon: "🗒",
    name: "Quick Notes",
    description: "Space for messy thoughts.",
    definitions: [taskNote],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
    presentation: pink,
  );

  static const exerciseMood = Exercise(
    icon: "🗿",
    name: "Mood Check",
    description: "Uncover unmet needs.",
    definitions: [
      taskContext,
      taskEmotion,
      taskNeed,
      taskAction,
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
    presentation: yellow,
  );

  static const exerciseThought = Exercise(
    icon: "🔍",
    name: "Thought Check",
    description: "Spot patterns and fallacies.",
    definitions: [
      taskContext,
      taskCoreBelief,
      taskDistortion,
      taskAction,
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
    presentation: e,
  );

  static const exerciseAct = Exercise(
    icon: "🎬",
    name: "Act Check",
    description: "Respond, don't react.",
    definitions: [
      taskContext,
      taskNeed,
      taskDistortion,
      taskAction,
    ],
    collectionSlug: "",
    hierarchyPath: "",
    id: "",
    uuid: "",
    presentation: c,
  );
}
