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
    primary: Color(0xFFF2AEAE),
    secondary: Color(0xFFF2C48D),
    tertiary: Color(0xFFBFB84E),
    neutral: Colors.transparent,
    neutralVariant: Colors.transparent,
  );

  static const b = Presentation(
    seed: 400.0,
    primary: Color.fromARGB(255, 224, 191, 102),
    secondary: Color.fromARGB(255, 232, 95, 10),
    tertiary: Color.fromARGB(255, 215, 160, 87),
    neutral: Colors.transparent,
    neutralVariant: Colors.transparent,
  );

  static const c = Presentation(
    seed: 1049.0,
    primary: Color(0xFF5CC66C),
    secondary: Color.fromARGB(255, 239, 242, 54),
    tertiary: Color(0xFF80C8A3),
    neutral: Colors.transparent,
    neutralVariant: Colors.transparent,
  );

  static const d = Presentation(
    seed: 19.0,
    primary: Color(0xFF143974),
    secondary: Color.fromARGB(255, 146, 224, 237),
    tertiary: Color(0xFF4188B3),
    neutral: Colors.transparent,
    neutralVariant: Colors.transparent,
  );

  // static const e = Presentation(
  //   seed: 4096.0,
  //   primary: Color.fromARGB(255, 184, 229, 231),
  //   secondary: Color.fromARGB(255, 150, 162, 255),
  //   tertiary: Color.fromARGB(255, 218, 203, 185),
  //   neutral: Colors.transparent,
  //   neutralVariant: Colors.transparent,
  // );

  //
  // TASKS
  //

  static const taskNote = Task.linear(
    icon: "✏️",
    name: "",
    description: "",
    definitions: <TaskDefinition>[
      TaskDefinition.note(
        icon: "",
        name: "---",
        description: "---",
        hierarchyPath: "---",
        id: "---",
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
        icon: "",
        name: "What’s going on?",
        description:
            "Where am I? Who am I with? When did I start to notice a change?",
        hierarchyPath: "",
        id: "context",
        uuid: "178aa923-e017-4508-b31d-42fdcd813053",
      ),

      // LABEL - SOCIAL

      TaskDefinition.label(
        icon: "🍻",
        name: "Friends",
        description: "",
        hierarchyPath: "context/social",
        id: "friend",
        uuid: "4c6486e4-11b0-4361-8a1b-544197af8b3f",
      ),
      TaskDefinition.label(
        icon: "🏠",
        name: "Family",
        description: "",
        hierarchyPath: "context/social",
        id: "family",
        uuid: "adf61e10-0e05-4230-978b-448d1f32b8e9",
      ),
      TaskDefinition.label(
        icon: "🐕",
        name: "Pet",
        description: "",
        hierarchyPath: "context/social",
        id: "pet",
        uuid: "087e03a6-e927-4332-91a5-632bf9147f19",
      ),
      TaskDefinition.label(
        icon: "💗",
        name: "Relationship",
        description: "",
        hierarchyPath: "context/social",
        id: "relationship",
        uuid: "900efac7-1f64-4ada-b919-e736e524efad",
      ),
      TaskDefinition.label(
        icon: "🏘",
        name: "Community",
        description: "",
        hierarchyPath: "context/social",
        id: "community",
        uuid: "0f1c8758-7c13-4cc8-bece-a9c620c412b5",
      ),

      // LABEL - LIFE

      TaskDefinition.label(
        icon: "💼",
        name: "Work",
        description: "",
        hierarchyPath: "context/life",
        id: "work",
        uuid: "e6911c38-7277-4e8f-944f-eb1f89616635",
      ),
      TaskDefinition.label(
        icon: "🎓",
        name: "Learning",
        description: "",
        hierarchyPath: "context/life",
        id: "learning",
        uuid: "69460c4a-59db-4441-ae10-ef358588d77f",
      ),
      TaskDefinition.label(
        icon: "💰",
        name: "Finance",
        description: "",
        hierarchyPath: "context/life",
        id: "finance",
        uuid: "83ecb852-f74d-4e16-9be0-bdbe9343f660",
      ),
      TaskDefinition.label(
        icon: "🛍",
        name: "Shopping",
        description: "",
        hierarchyPath: "context/life",
        id: "shopping",
        uuid: "d88c2eaf-1c2e-408b-aa5d-289a2464b2d4",
      ),
      TaskDefinition.label(
        icon: "🍿",
        name: "Entertainment",
        description: "",
        hierarchyPath: "context/life",
        id: "entertainment",
        uuid: "63d20bef-c000-4c3b-8b43-8c7067120ff6",
      ),

      // LABEL - WELLNESS

      TaskDefinition.label(
        icon: "🍴",
        name: "Eats",
        description: "",
        hierarchyPath: "context/wellness",
        id: "eats",
        uuid: "23ddd69c-60aa-45e5-adc0-bf5111460295",
      ),
      TaskDefinition.label(
        icon: "🏈",
        name: "Fitness",
        description: "",
        hierarchyPath: "context/wellness",
        id: "fitness",
        uuid: "2c63dc82-f514-4ca3-9c0f-7607c5a535e9",
      ),
      TaskDefinition.label(
        icon: "🩺",
        name: "Health",
        description: "",
        hierarchyPath: "context/wellness",
        id: "health",
        uuid: "e6fa1070-23e7-47be-be1e-5ce73e5804f8",
      ),
      TaskDefinition.label(
        icon: "🧹",
        name: "Chores",
        description: "",
        hierarchyPath: "context/wellness",
        id: "chores",
        uuid: "c59992cd-c56b-4479-9972-25e8ba31bf0a",
      ),
      TaskDefinition.label(
        icon: "🕯",
        name: "Self Care",
        description: "",
        hierarchyPath: "context/wellness",
        id: "self-care",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),

      // LABEL - WORLD

      TaskDefinition.label(
        icon: "🏝",
        name: "Travel",
        description: "",
        hierarchyPath: "context/wellness",
        id: "travel",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),
      TaskDefinition.label(
        icon: "🚀",
        name: "Hobbies",
        description: "",
        hierarchyPath: "context/wellness",
        id: "hobbies",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),
      TaskDefinition.label(
        icon: "🌎",
        name: "Philanthropy",
        description: "",
        hierarchyPath: "context/wellness",
        id: "philanthropy",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),
      TaskDefinition.label(
        icon: "🌱",
        name: "Nature",
        description: "",
        hierarchyPath: "context/wellness",
        id: "nature",
        uuid: "6f10fbcb-38f9-4857-be73-94ac4174072d",
      ),
      TaskDefinition.label(
        icon: "🧘",
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
        icon: "🧠",
        name: "Mind reading",
        description: "I bet they must be annoyed.",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "mind-reading",
        uuid: "39b75f8e-52b6-4c3c-a0d6-94d20464abaf",
      ),
      TaskDefinition.note(
        icon: "🔮",
        name: "Fortune telling",
        description: "I will always be alone.",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "fortune-telling",
        uuid: "f6ff5c76-cdcd-4c21-8688-61b30ffb43c0",
      ),
      TaskDefinition.note(
        icon: "🌗",
        name: "All or nothing",
        description: "I havent figured myself out; I am a failure.",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "all-or-nothing",
        uuid: "9f3fc20d-aed3-4863-9a07-13d169cf64f4",
      ),
      TaskDefinition.note(
        icon: "🎭",
        name: "Emotion reasoning",
        description: "I feel lost; I must be wrong",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "emotion-reasoning",
        uuid: "c06b7c9f-f486-4bee-9f4d-76ec029f4d33",
      ),
      TaskDefinition.note(
        icon: "🏷",
        name: "Labeling",
        description: "I'm stupid",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "labeling",
        uuid: "c0493709-0d89-4511-a0f8-cd1ecf64c056",
      ),

      // OPTION - TOXIC POSITIVITY

      TaskDefinition.note(
        icon: "👟",
        name: "Avoiding emotions",
        description: "Don’t be disappointed.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "avoiding-emotions",
        uuid: "5c35ee8e-151a-4d73-95a5-5d5a3144dec7",
      ),
      TaskDefinition.note(
        icon: "🙏",
        name: "Gratitude shaming",
        description: "It could be worst.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "gratitude-shaming",
        uuid: "0e00f9de-6402-4416-b0af-b440e610e371",
      ),
      TaskDefinition.note(
        icon: "⚖️",
        name: "Comparison trap",
        description: "Why is everyone advancing their careers.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "comparison-trap",
        uuid: "29a5dfa5-b6b9-4ee1-8351-482136f579b0",
      ),
      TaskDefinition.note(
        icon: "🪄",
        name: "Magical thinking",
        description: "If I’m ______ , my life would be better.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "magical-thinking",
        uuid: "7719fed6-d24f-4c4a-861b-3d45b1f4dca7",
      ),

      // OPTION - ASSUMING THE WORST

      TaskDefinition.note(
        icon: "☄️",
        name: "Catastophizing",
        description: "What if I blow this all up?",
        hierarchyPath: "distortion/assuming-the-worst",
        id: "catastophizing",
        uuid: "4935779a-a837-4f73-9e76-1e12045962cc",
      ),
      TaskDefinition.note(
        icon: "🙈",
        name: "Discouting the positive",
        description: "They are just congratulating me to be nice.",
        hierarchyPath: "distortion/assuming-the-worst",
        id: "discouting-the-positive",
        uuid: "27ef73b4-f726-47a9-98f7-f1194b23fc77",
      ),
      TaskDefinition.note(
        icon: "🔬",
        name: "Magnifying the negative",
        description: "That single error ruined everything.",
        hierarchyPath: "distortion/assuming-the-worst",
        id: "magnifying-the-negative",
        uuid: "0000",
      ),
      TaskDefinition.note(
        icon: "☂️",
        name: "Overgeneralization",
        description: "Everyone sucks.",
        hierarchyPath: "distortion/assuming-the-worst",
        id: "overgeneralization",
        uuid: "355bdefc-318e-4aa0-8ea8-b6d0b86ab85b",
      ),

      // OPTION - FINGER POINTING

      TaskDefinition.note(
        icon: "👉",
        name: "Self blaming",
        description: "They got bad grades, because I’m their friend.",
        hierarchyPath: "distortion/finger-pointing",
        id: "self-blaming",
        uuid: "87f7f049-69cd-461a-aa79-4c2624f40508",
      ),
      TaskDefinition.note(
        icon: "👈",
        name: "Blaming others",
        description: "They are to blame for my unhappiness.",
        hierarchyPath: "distortion/finger-pointing",
        id: "blaming-others",
        uuid: "75d88cbf-a193-404c-a3c5-cbb102018c69",
      ),
      TaskDefinition.note(
        icon: "👑",
        name: "Always right",
        description: "I think that I’m fair and right.",
        hierarchyPath: "distortion/finger-pointing",
        id: "always-right",
        uuid: "07b70c39-6d86-4b0d-983e-71a4443c8c55",
      ),
      TaskDefinition.note(
        icon: "🎯",
        name: "Victim position",
        description: "The whole world is out to get me.",
        hierarchyPath: "distortion/finger-pointing",
        id: "victim-position",
        uuid: "f22c6604-7e5b-4fd2-8119-1e865fa0f047",
      ),
      TaskDefinition.note(
        icon: "👼",
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
        icon: "",
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
        icon: "",
        name: "How am I feeling?",
        description:
            // "How strongly do I want to avoid or approach this emotion? How is my body responding to it? Where do I feel these sensations?",
            "How strongly is my body responding to the situation? Where do I feel these sensations?",
        hierarchyPath: "",
        id: "",
        uuid: "608b80a2-20b1-4056-8338-26a4e2dc6be6",
      ),

      // LABEL - EMOTIONS

      TaskDefinition.label(
        icon: "😫",
        name: "Frustrated",
        description: "",
        hierarchyPath: "emotion",
        id: "frustrated",
        uuid: "05c68821-91b4-4e54-8ee3-0d9ca6a6fe1d",
      ),
      TaskDefinition.label(
        icon: "🧐",
        name: "Curious",
        description: "",
        hierarchyPath: "emotion",
        id: "curious",
        uuid: "e8eff63f-d653-407c-83c5-9d9e1d307c44",
      ),
      TaskDefinition.label(
        icon: "🙃",
        name: "Joy",
        description: "",
        hierarchyPath: "emotion",
        id: "joy",
        uuid: "1b3c6720-3806-4c76-8c15-cc313c03da47",
      ),
      TaskDefinition.label(
        icon: "🥺",
        name: "Guilt",
        description: "",
        hierarchyPath: "emotion",
        id: "guilt",
        uuid: "20018f8a-3839-4f70-8ca3-ca58fb7a3eff",
      ),
      TaskDefinition.label(
        icon: "🤔",
        name: "Confused",
        description: "",
        hierarchyPath: "emotion",
        id: "confused",
        uuid: "4ce3495d-f06b-46aa-8e9c-55e9b9e9dae9",
      ),
      TaskDefinition.label(
        icon: "😡",
        name: "Angry",
        description: "",
        hierarchyPath: "emotion",
        id: "angry",
        uuid: "34d4df91-b033-44b8-a722-4bd61579b5a7",
      ),
      TaskDefinition.label(
        icon: "😟",
        name: "Concerned",
        description: "",
        hierarchyPath: "emotion",
        id: "concerned",
        uuid: "56792770-7c4e-4f01-a048-5bb157da1ca7",
      ),
      TaskDefinition.label(
        icon: "😌",
        name: "Neutral",
        description: "",
        hierarchyPath: "emotion",
        id: "neutral",
        uuid: "5b74d94a-784f-40f3-818b-9e9c6884c761",
      ),
      TaskDefinition.label(
        icon: "😱",
        name: "Terrified",
        description: "",
        hierarchyPath: "emotion",
        id: "terrified",
        uuid: "bce190fe-4109-4dc4-8d77-45b68311e906",
      ),
      TaskDefinition.label(
        icon: "🙄",
        name: "Annoyed",
        description: "",
        hierarchyPath: "emotion",
        id: "annoyed",
        uuid: "e035f827-6541-4f54-af85-aa3dc099c50b",
      ),
      TaskDefinition.label(
        icon: "😪",
        name: "Bored",
        description: "",
        hierarchyPath: "emotion",
        id: "bored",
        uuid: "327da587-0c0f-46e7-b3eb-bf203db90b45",
      ),
      TaskDefinition.label(
        icon: "😭",
        name: "Sad",
        description: "",
        hierarchyPath: "emotion",
        id: "sad",
        uuid: "2a44ae79-d954-487f-b1df-49c3d68fe389",
      ),
      TaskDefinition.label(
        icon: "😰",
        name: "Anxious",
        description: "",
        hierarchyPath: "emotion",
        id: "anxious",
        uuid: "bd193d39-6282-4d1e-85be-2037b0ea639d",
      ),
      TaskDefinition.label(
        icon: "😖",
        name: "Overwhelmed",
        description: "",
        hierarchyPath: "emotion",
        id: "overwhelmed",
        uuid: "29049df0-8dea-47cf-bc8f-9d08c374e868",
      ),
      TaskDefinition.label(
        icon: "😒",
        name: "Jealous",
        description: "",
        hierarchyPath: "emotion",
        id: "jealous",
        uuid: "b14a07ad-e2c2-482d-abc6-9e8d584c6965",
      ),
      TaskDefinition.label(
        icon: "🤢",
        name: "Disgusted",
        description: "",
        hierarchyPath: "emotion",
        id: "disgusted",
        uuid: "076a17ca-d140-4918-ab16-d1b0ff45e352",
      ),
      TaskDefinition.label(
        icon: "😔",
        name: "Remorse",
        description: "",
        hierarchyPath: "emotion",
        id: "remorse",
        uuid: "ed29ffe6-a038-46a4-97b6-ac85571c64bb",
      ),
      TaskDefinition.label(
        icon: "😫",
        name: "Despair",
        description: "",
        hierarchyPath: "emotion",
        id: "despair",
        uuid: "4d1906bc-b5bc-483a-8f30-68e4dc4bf47c",
      ),
      TaskDefinition.label(
        icon: "😞",
        name: "Pessimistic",
        description: "",
        hierarchyPath: "emotion",
        id: "pressimistic",
        uuid: "000000",
      ),
      TaskDefinition.label(
        icon: "😃",
        name: "Optimistic",
        description: "",
        hierarchyPath: "emotion",
        id: "optimistic",
        uuid: "6f8f14ba-b314-4cd6-b7ef-f7ae089cc27c",
      ),
      TaskDefinition.label(
        icon: "🤩",
        name: "Excited",
        description: "",
        hierarchyPath: "emotion",
        id: "excited",
        uuid: "091b69f1-03c0-4e46-803a-b959f4f1113d",
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
    definitions: <TaskDefinition>[
      TaskDefinition.note(
        icon: "",
        name: "What's your body telling you?",
        description:
            "Do I want to avoid or approach this? How does it relate to out universal needs?",
        hierarchyPath: "",
        id: "",
        uuid: "8b57cbff-faec-4efd-a855-f67ff168eec3",
      ),

      // LABEL - NEEDS

      TaskDefinition.label(
        icon: "🖖",
        name: "Prosperity",
        description: "",
        hierarchyPath: "prosperoty",
        id: "needs",
        uuid: "f5280388-b869-4ef1-bbf1-7f6cc4536692",
      ),
      TaskDefinition.label(
        icon: "🎯",
        name: "Purpose",
        description: "",
        hierarchyPath: "needs",
        id: "purpose",
        uuid: "56e33365-eb37-4225-be36-0ae5d4992328",
      ),
      TaskDefinition.label(
        icon: "🔮",
        name: "Clarity",
        description: "",
        hierarchyPath: "needs",
        id: "clarity",
        uuid: "109f97a4-2a4c-4d06-bdef-cce08a6bfc98",
      ),
      TaskDefinition.label(
        icon: "💅",
        name: "Beauty",
        description: "",
        hierarchyPath: "needs",
        id: "beauty",
        uuid: "9ae0a700-43d2-4e66-b9f6-cf6caeed879c",
      ),
      TaskDefinition.label(
        icon: "🧘",
        name: "Spirituality",
        description: "",
        hierarchyPath: "needs",
        id: "spirituality",
        uuid: "cd41af41-c228-4ca2-89a6-1a9fc680abdc",
      ),
      TaskDefinition.label(
        icon: "🤟",
        name: "Connection",
        description: "",
        hierarchyPath: "needs",
        id: "000000",
        uuid: "000000",
      ),
      TaskDefinition.label(
        icon: "🥰",
        name: "Empathy",
        description: "",
        hierarchyPath: "needs",
        id: "empathy",
        uuid: "f30ebe52-80bc-411e-973f-b50080c327cb",
      ),
      TaskDefinition.label(
        icon: "🕊",
        name: "Peace",
        description: "",
        hierarchyPath: "needs",
        id: "peace",
        uuid: "f9dba4c9-9fe8-441f-b532-45428466e1fa",
      ),
      TaskDefinition.label(
        icon: "🔒",
        name: "Security",
        description: "",
        hierarchyPath: "needs",
        id: "000000",
        uuid: "000000",
      ),
      TaskDefinition.label(
        icon: "💪",
        name: "Stability",
        description: "",
        hierarchyPath: "needs",
        id: "stability",
        uuid: "40a49cde-6152-47a8-a819-1bf229a35d99",
      ),
      TaskDefinition.label(
        icon: "🏡",
        name: "Belonging",
        description: "",
        hierarchyPath: "needs",
        id: "belonging",
        uuid: "cbac68f5-5942-4513-ba05-2e934012c17e",
      ),
      TaskDefinition.label(
        icon: "🗽",
        name: "Autonomy",
        description: "",
        hierarchyPath: "needs",
        id: "autonomy",
        uuid: "fa41368a-41fb-4d09-861a-98ec3ec99a8f",
      ),
      TaskDefinition.label(
        icon: "👓",
        name: "Transparency",
        description: "",
        hierarchyPath: "needs",
        id: "transparency",
        uuid: "f83f18ef-f731-4b20-a724-3857dcf575c4",
      ),
      TaskDefinition.label(
        icon: "⚖️",
        name: "Justice",
        description: "",
        hierarchyPath: "needs",
        id: "justice",
        uuid: "1e995fc4-9baf-403f-a4f3-874b04e604d1",
      ),
      TaskDefinition.label(
        icon: "🤝",
        name: "Trust",
        description: "",
        hierarchyPath: "needs",
        id: "trust",
        uuid: "cceb06e6-3fe3-4a2c-82f9-3168bcd63494",
      ),
      TaskDefinition.label(
        icon: "🫡",
        name: "Respect",
        description: "",
        hierarchyPath: "needs",
        id: "respect",
        uuid: "fb429cf8-8fa9-438b-9424-508ccd7265f2",
      ),
      TaskDefinition.label(
        icon: "🛀",
        name: "Care",
        description: "",
        hierarchyPath: "needs",
        id: "care",
        uuid: "d0987425-24c0-4de1-883f-aeac1e8ab8a9",
      ),
      TaskDefinition.label(
        icon: "💡",
        name: "Creativity",
        description: "",
        hierarchyPath: "needs",
        id: "creativity",
        uuid: "f77ebb2c-5237-40fa-b862-35e0e6e2092d",
      ),
      TaskDefinition.label(
        icon: "🎤",
        name: "Expression",
        description: "",
        hierarchyPath: "needs",
        id: "expression",
        uuid: "0593a2c3-b773-4c5f-bcb7-61f106bc46e4",
      ),
      TaskDefinition.label(
        icon: "🙏",
        name: "Hope",
        description: "",
        hierarchyPath: "needs",
        id: "hope",
        uuid: "7da09ca9-1973-476a-a9b1-0beaa5db21a3",
      ),
      TaskDefinition.label(
        icon: "😴",
        name: "Rest",
        description: "",
        hierarchyPath: "needs",
        id: "rest",
        uuid: "eda73b13-59a5-43e6-9cb3-a862d7652834",
      ),
    ],
    hierarchyPath: "",
    id: "",
    uuid: "6923c893-9488-4e46-8b9f-e04792cdf1b1",
  );

  static const taskAction = Task.diverge(
    icon: "🎯",
    name: "Set Intentions",
    description: "What can you do?",
    definitions: <TaskDefinition>[
      TaskDefinition.note(
        icon: "🗿",
        name: "Keep still",
        description: "Sometimes doing nothing is doing something.",
        hierarchyPath: "intentions/",
        id: "do-nothing",
        uuid: "da10b2a9-bb2d-4bca-9c93-e6f055f85621",
      ),
      TaskDefinition.note(
        icon: "⚖️",
        name: "Effort vs impact",
        description: "Gain a clearer picture of your task priorities.",
        hierarchyPath: "intentions/motivation",
        id: "effort-vs-impact",
        uuid: "9dffb4cd-718a-4571-9c22-0c3d773b36d7",
      ),
      TaskDefinition.note(
        icon: "🧱",
        name: "Identify barriers",
        description: "Prepare for potential friction and opposing forces.",
        hierarchyPath: "intentions/motivation",
        id: "barriers",
        uuid: "a149c25b-6de4-4a53-b311-3fdbe433eac2",
      ),
      TaskDefinition.note(
        icon: "❤️‍🔥",
        name: "Seeing one’s way",
        description: "Find authentic purpose and meaning in a task.",
        hierarchyPath: "intentions/motivation",
        id: "purpose",
        uuid: "23c051f5-e08b-4b41-9666-572323ee0337",
      ),
      TaskDefinition.note(
        icon: "🔍",
        name: "Macro & Micro lens",
        description: "Realize the benefits and costs of a task",
        hierarchyPath: "intentions/motivation",
        id: "macro-micro",
        uuid: "f1a05eb0-8a92-4076-ab4b-fc6b0459c64e",
      ),
      TaskDefinition.note(
        icon: "🌊",
        name: "Go with the current",
        description: "Gain understanding as you go.",
        hierarchyPath: "intentions/motivation",
        id: "go",
        uuid: "2a24765d-8fcc-41c5-87a6-e76647086b80",
      ),

      // NOTE - SOCIAL

      TaskDefinition.note(
        icon: "🙋",
        name: "Asking for help",
        description: "Knowing when you need help is a sign of strength.",
        hierarchyPath: "intentions/social",
        id: "ask-for-help",
        uuid: "c60edbe6-6c11-4f2e-b664-cae30f81fb6c",
      ),
      TaskDefinition.note(
        icon: "🧓",
        name: "Get a wise opinion",
        description: "In person, online or in books",
        hierarchyPath: "intentions/social",
        id: "opinion",
        uuid: "36ae455d-7026-4cbe-b584-23cd6ce2d1e8",
      ),
      TaskDefinition.note(
        icon: "👶",
        name: "Explain it to a six year old.",
        description: "A great way to simplify and clarify your thoughts.",
        hierarchyPath: "intentions/social",
        id: "explain-it-to-kids",
        uuid: "6ba0a6ff-8a3e-4c1a-a478-3c013d2f6a3e",
      ),

      // NOTE - RETHINK

      TaskDefinition.note(
        icon: "🧪",
        name: "Iterative testing",
        description: "Conquer uncertainty by continuously learn and improve",
        hierarchyPath: "intentions/rethink",
        id: "iterative-testing",
        uuid: "00000",
      ),
      TaskDefinition.note(
        icon: "🌗",
        name: "Become a contrarian.",
        description: "Rethink, adapt and evolve to change.",
        hierarchyPath: "intentions/rethink",
        id: "contrarian",
        uuid: "c852466a-d3b7-4b08-a3c7-89ea57a39a94",
      ),
      TaskDefinition.note(
        icon: "💤",
        name: "See it with fresh eyes.",
        description: "Taking a break away from repetitive thoughts.",
        hierarchyPath: "intentions/rethink",
        id: "fresh-eyes",
        uuid: "d9e9b5dc-7d8e-4329-b929-5ac5a4ad3806",
      ),
      TaskDefinition.note(
        icon: "🛝",
        name: "Youngblood",
        description: "Find a creative, stupid, and enjoyable way to do it.",
        hierarchyPath: "intention",
        id: "young-blood",
        uuid: "4c593178-1f51-4cb9-8d4c-c76f17216d89",
      ),

      // NOTE - SIMPLIFY

      TaskDefinition.note(
        icon: "🪥",
        name: "Practice routine",
        description: "Repetition helps your brain automate",
        hierarchyPath: "action/simplify",
        id: "routine",
        uuid: "073c4252-abf0-4cb5-92a5-4ff844fe6912",
      ),
      TaskDefinition.note(
        icon: "🐅",
        name: "Acting on instinct",
        description: "Understand and capitalized on your inclination",
        hierarchyPath: "action/simplify",
        id: "instinct",
        uuid: "eaceb7b8-433e-4ecb-903e-6a9c77b2fb57",
      ),
      TaskDefinition.note(
        icon: "🍄",
        name: "Breaking things down",
        description: "Turn overwhelming challenges into manageable tasks",
        hierarchyPath: "action/simplify",
        id: "breaking-things-down",
        uuid: "c2acdde9-d302-4b54-8f64-8580347e91c7",
      ),
      TaskDefinition.note(
        icon: "🪣",
        name: "Bucketing",
        description: "Group similar tasks to make decisions less exhausting",
        hierarchyPath: "action/simplify",
        id: "bucketing",
        uuid: "9cc93fc1-22df-4843-8a03-d50b5be2ffcc",
      ),
    ],
    hierarchyPath: "",
    id: "",
    uuid: "88f0e492-cdbe-4720-8d84-25218ba87842",
  );

  //
  // EXECISE
  //

  static const exerciseNote = Exercise(
    icon: "💡",
    name: "Quick Notes",
    description: "Space for messy thoughts.",
    definitions: [taskNote],
    hierarchyPath: "",
    id: "",
    uuid: "51aeff45-8ba7-4669-a039-48a9f32246dc",
    presentation: b,
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
    presentation: a,
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
    presentation: d,
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
