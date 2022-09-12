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
        hierarchyPath: "",
        id: "",
        uuid: "63c65144-4c0a-4341-8015-5592172536ef",
      ),
    ],
    hierarchyPath: "",
    id: "note",
    uuid: "1e6cc15f-82f4-4ea3-a18e-502a369c8fcf",
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
        hierarchyPath: "",
        id: "context",
        uuid: "178aa923-e017-4508-b31d-42fdcd813053",
      ),

      // LABEL - SOCIAL

      TaskDefinition.label(
        name: "Friends",
        description: "",
        hierarchyPath: "context/social",
        id: "friend",
        uuid: "4c6486e4-11b0-4361-8a1b-544197af8b3f",
      ),
      TaskDefinition.label(
        name: "Family",
        description: "",
        hierarchyPath: "context/social",
        id: "family",
        uuid: "adf61e10-0e05-4230-978b-448d1f32b8e9",
      ),
      TaskDefinition.label(
        name: "Pet",
        description: "",
        hierarchyPath: "context/social",
        id: "pet",
        uuid: "087e03a6-e927-4332-91a5-632bf9147f19",
      ),
      TaskDefinition.label(
        name: "Relationship",
        description: "",
        hierarchyPath: "context/social",
        id: "relationship",
        uuid: "900efac7-1f64-4ada-b919-e736e524efad",
      ),
      TaskDefinition.label(
        name: "Community",
        description: "",
        hierarchyPath: "context/social",
        id: "community",
        uuid: "0f1c8758-7c13-4cc8-bece-a9c620c412b5",
      ),

      // LABEL - LIFE

      TaskDefinition.label(
        name: "Work",
        description: "",
        hierarchyPath: "context/life",
        id: "work",
        uuid: "e6911c38-7277-4e8f-944f-eb1f89616635",
      ),
      TaskDefinition.label(
        name: "Learning",
        description: "",
        hierarchyPath: "context/life",
        id: "learning",
        uuid: "69460c4a-59db-4441-ae10-ef358588d77f",
      ),
      TaskDefinition.label(
        name: "Finance",
        description: "",
        hierarchyPath: "context/life",
        id: "finance",
        uuid: "83ecb852-f74d-4e16-9be0-bdbe9343f660",
      ),
      TaskDefinition.label(
        name: "Shopping",
        description: "",
        hierarchyPath: "context/life",
        id: "shopping",
        uuid: "d88c2eaf-1c2e-408b-aa5d-289a2464b2d4",
      ),
      TaskDefinition.label(
        name: "Entertainment",
        description: "",
        hierarchyPath: "context/life",
        id: "entertainment",
        uuid: "63d20bef-c000-4c3b-8b43-8c7067120ff6",
      ),

      // LABEL - WELLNESS

      TaskDefinition.label(
        name: "Eats",
        description: "",
        hierarchyPath: "context/wellness",
        id: "eats",
        uuid: "23ddd69c-60aa-45e5-adc0-bf5111460295",
      ),
      TaskDefinition.label(
        name: "Fitness",
        description: "",
        hierarchyPath: "context/wellness",
        id: "fitness",
        uuid: "2c63dc82-f514-4ca3-9c0f-7607c5a535e9",
      ),
      TaskDefinition.label(
        name: "Health",
        description: "",
        hierarchyPath: "context/wellness",
        id: "health",
        uuid: "e6fa1070-23e7-47be-be1e-5ce73e5804f8",
      ),
      TaskDefinition.label(
        name: "Chores",
        description: "",
        hierarchyPath: "context/wellness",
        id: "chores",
        uuid: "c59992cd-c56b-4479-9972-25e8ba31bf0a",
      ),
      TaskDefinition.label(
        name: "Self Care",
        description: "",
        hierarchyPath: "context/wellness",
        id: "self-care",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),

      // LABEL - WORLD

      TaskDefinition.label(
        name: "Travel",
        description: "",
        hierarchyPath: "context/wellness",
        id: "travel",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),
      TaskDefinition.label(
        name: "Hobbies",
        description: "",
        hierarchyPath: "context/wellness",
        id: "hobbies",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),
      TaskDefinition.label(
        name: "Philanthropy",
        description: "",
        hierarchyPath: "context/wellness",
        id: "philanthropy",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),
      TaskDefinition.label(
        name: "Nature",
        description: "",
        hierarchyPath: "context/wellness",
        id: "nature",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),
      TaskDefinition.label(
        name: "Spirituality",
        description: "",
        hierarchyPath: "context/wellness",
        id: "spirituality",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),
    ],
    hierarchyPath: "",
    id: "",
    uuid: "60719f52-5d5c-457a-94ec-ccb53b0b2d90",
  );

  static const taskDistortion = Task.diverge(
    icon: "🤡",
    name: "Spot Distortions",
    description: "Is it true?",
    definitions: <TaskDefinition>[
      // OPTION - JUMPING TO CONCLUSION

      TaskDefinition.note(
        name: "Mind reading",
        description: "I bet they must be annoyed.",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "mind-reading",
        uuid: "39b75f8e-52b6-4c3c-a0d6-94d20464abaf",
      ),
      TaskDefinition.note(
        name: "Fortune telling",
        description: "I will always be alone.",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "fortune-telling",
        uuid: "f6ff5c76-cdcd-4c21-8688-61b30ffb43c0",
      ),
      TaskDefinition.note(
        name: "All or nothing",
        description: "I havent figured myself out; I am a failure.",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "all-or-nothing",
        uuid: "9f3fc20d-aed3-4863-9a07-13d169cf64f4",
      ),
      TaskDefinition.note(
        name: "Emotion reasoning",
        description: "I feel lost; I must be wrong",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "emotion-reasoning",
        uuid: "c06b7c9f-f486-4bee-9f4d-76ec029f4d33",
      ),
      TaskDefinition.note(
        name: "Labeling",
        description: "I'm stupid",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "labeling",
        uuid: "c0493709-0d89-4511-a0f8-cd1ecf64c056",
      ),

      // OPTION - TOXIC POSITIVITY

      TaskDefinition.note(
        name: "Avoiding emotions",
        description: "Don’t be disappointed.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "avoiding-emotions",
        uuid: "5c35ee8e-151a-4d73-95a5-5d5a3144dec7",
      ),
      TaskDefinition.note(
        name: "Gratitude shaming",
        description: "It could be worst.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "gratitude-shaming",
        uuid: "0e00f9de-6402-4416-b0af-b440e610e371",
      ),
      TaskDefinition.note(
        name: "Comparison trap",
        description: "Why is everyone advancing their careers.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "comparison-trap",
        uuid: "29a5dfa5-b6b9-4ee1-8351-482136f579b0",
      ),
      TaskDefinition.note(
        name: "Magical thinking",
        description: "If I’m ______ , my life would be better.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "magical-thinking",
        uuid: "7719fed6-d24f-4c4a-861b-3d45b1f4dca7",
      ),

      // OPTION - FINGER POINTING

      TaskDefinition.note(
        name: "Self blaming",
        description: "They got bad grades, because I’m their friend.",
        hierarchyPath: "distortion/finger-pointing",
        id: "self-blaming",
        uuid: "87f7f049-69cd-461a-aa79-4c2624f40508",
      ),
      TaskDefinition.note(
        name: "Blaming others",
        description: "They are to blame for my unhappiness.",
        hierarchyPath: "distortion/finger-pointing",
        id: "blaming-others",
        uuid: "75d88cbf-a193-404c-a3c5-cbb102018c69",
      ),
      TaskDefinition.note(
        name: "Always right",
        description: "I think that I’m fair and right.",
        hierarchyPath: "distortion/finger-pointing",
        id: "always-right",
        uuid: "07b70c39-6d86-4b0d-983e-71a4443c8c55",
      ),
      TaskDefinition.note(
        name: "Victim position",
        description: "The whole world is out to get me.",
        hierarchyPath: "distortion/finger-pointing",
        id: "victim-position",
        uuid: "f22c6604-7e5b-4fd2-8119-1e865fa0f047",
      ),
      TaskDefinition.note(
        name: "Heaven's reward",
        description: "I’ve donated a lot. Why am I still poor?",
        hierarchyPath: "distortion/finger-pointing",
        id: "heavens-reward",
        uuid: "9c6639f2-afb5-45ed-9d8c-b56b4b06bbf4",
      ),
    ],
    hierarchyPath: "",
    id: "",
    uuid: "018a7b16-0559-45bd-9c92-ce2cdeb042a0",
  );

  static const taskCoreBelief = Task.converge(
    icon: "🕷",
    name: "Examine Core Belief",
    description: "What if it's true?",
    definitions: <TaskDefinition>[
      TaskDefinition.note(
        name: "If that were true,\nwhat would it mean to you?",
        description: "",
        hierarchyPath: "",
        id: "",
        uuid: "5679230e-a2ae-41f0-a6d1-6f283dd51612",
      ),
    ],
    hierarchyPath: "",
    id: "",
    uuid: "91a181f3-9ccf-44b2-bb2c-73e4a2e297b2",
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
        hierarchyPath: "",
        id: "",
        uuid: "608b80a2-20b1-4056-8338-26a4e2dc6be6",
      ),
    ],
    hierarchyPath: "",
    id: "",
    uuid: "4cee7ddd-43a9-425c-a269-26498d0dc870",
  );

  static const taskNeed = Task.converge(
    icon: "❤️‍🔥",
    name: "Universal Needs",
    description: "What's your body telling you?",
    definitions: <TaskDefinition>[],
    hierarchyPath: "",
    id: "",
    uuid: "6923c893-9488-4e46-8b9f-e04792cdf1b1",
  );

  static const taskAction = Task.diverge(
    icon: "🎯",
    name: "Set Intentions",
    description: "What can you do?",
    definitions: <TaskDefinition>[],
    hierarchyPath: "",
    id: "",
    uuid: "88f0e492-cdbe-4720-8d84-25218ba87842",
  );

  //
  // EXECISE
  //

  static const exerciseNote = Exercise(
    icon: "🗒",
    name: "Quick Notes",
    description: "Space for messy thoughts.",
    definitions: [taskNote],
    hierarchyPath: "",
    id: "",
    uuid: "51aeff45-8ba7-4669-a039-48a9f32246dc",
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
    hierarchyPath: "",
    id: "",
    uuid: "bc0546a3-8ca8-477d-81cb-b1aa0dffa62c",
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
    hierarchyPath: "",
    id: "",
    uuid: "fa9bb353-1d11-43b0-ac15-f04abd9bc2e3",
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
    hierarchyPath: "",
    id: "",
    uuid: "80c94c61-33b8-42b0-ae14-0c0267dbb98b",
    presentation: c,
  );
}
