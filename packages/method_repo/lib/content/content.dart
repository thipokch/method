import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_core/abstract/present.dart';

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

  static const taskFeedback = Task.feedback(
    icon: "⭐️",
    name: "Feedback",
    description: "How was the session?",
    definitions: [
      TaskDefinition.label(
        icon: "👍",
        name: "Good",
        description: "",
        hierarchyPath: "feedback/rating",
        id: "good",
      ),
      TaskDefinition.label(
        icon: "👌",
        name: "Okay",
        description: "",
        hierarchyPath: "feedback/rating",
        id: "okay",
      ),
      TaskDefinition.label(
        icon: "👎",
        name: "Bad",
        description: "",
        hierarchyPath: "feedback/rating",
        id: "bad",
      ),
    ],
    hierarchyPath: "feedback",
    id: "feedback",
  );

  static const taskNote = Task.linear(
    icon: "✏️",
    name: "",
    description: "",
    definitions: <TaskDefinition>[
      TaskDefinition.note(
        icon: "",
        name: "",
        description: "",
        hierarchyPath: "note",
        id: "note",
      ),
    ],
    hierarchyPath: "",
    id: "note",
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
      ),

      // LABEL - SOCIAL

      TaskDefinition.label(
        icon: "🍻",
        name: "Friends",
        description: "",
        hierarchyPath: "context/social",
        id: "friend",
      ),
      TaskDefinition.label(
        icon: "🏠",
        name: "Family",
        description: "",
        hierarchyPath: "context/social",
        id: "family",
      ),
      TaskDefinition.label(
        icon: "🐕",
        name: "Pet",
        description: "",
        hierarchyPath: "context/social",
        id: "pet",
      ),
      TaskDefinition.label(
        icon: "💗",
        name: "Relationship",
        description: "",
        hierarchyPath: "context/social",
        id: "relationship",
      ),
      TaskDefinition.label(
        icon: "🏘",
        name: "Community",
        description: "",
        hierarchyPath: "context/social",
        id: "community",
      ),

      // LABEL - LIFE

      TaskDefinition.label(
        icon: "💼",
        name: "Work",
        description: "",
        hierarchyPath: "context/life",
        id: "work",
      ),
      TaskDefinition.label(
        icon: "🎓",
        name: "Learning",
        description: "",
        hierarchyPath: "context/life",
        id: "learning",
      ),
      TaskDefinition.label(
        icon: "💰",
        name: "Finance",
        description: "",
        hierarchyPath: "context/life",
        id: "finance",
      ),
      TaskDefinition.label(
        icon: "🛍",
        name: "Shopping",
        description: "",
        hierarchyPath: "context/life",
        id: "shopping",
      ),
      TaskDefinition.label(
        icon: "🍿",
        name: "Entertainment",
        description: "",
        hierarchyPath: "context/life",
        id: "entertainment",
      ),

      // LABEL - WELLNESS

      TaskDefinition.label(
        icon: "🍴",
        name: "Eats",
        description: "",
        hierarchyPath: "context/wellness",
        id: "eats",
      ),
      TaskDefinition.label(
        icon: "🏈",
        name: "Fitness",
        description: "",
        hierarchyPath: "context/wellness",
        id: "fitness",
      ),
      TaskDefinition.label(
        icon: "🩺",
        name: "Health",
        description: "",
        hierarchyPath: "context/wellness",
        id: "health",
      ),
      TaskDefinition.label(
        icon: "🧹",
        name: "Chores",
        description: "",
        hierarchyPath: "context/wellness",
        id: "chores",
      ),
      TaskDefinition.label(
        icon: "🕯",
        name: "Self Care",
        description: "",
        hierarchyPath: "context/wellness",
        id: "self-care",
      ),

      // LABEL - WORLD

      TaskDefinition.label(
        icon: "🏝",
        name: "Travel",
        description: "",
        hierarchyPath: "context/wellness",
        id: "travel",
      ),
      TaskDefinition.label(
        icon: "🚀",
        name: "Hobbies",
        description: "",
        hierarchyPath: "context/wellness",
        id: "hobbies",
      ),
      TaskDefinition.label(
        icon: "🌎",
        name: "Philanthropy",
        description: "",
        hierarchyPath: "context/wellness",
        id: "philanthropy",
      ),
      TaskDefinition.label(
        icon: "🌱",
        name: "Nature",
        description: "",
        hierarchyPath: "context/wellness",
        id: "nature",
      ),
      TaskDefinition.label(
        icon: "🧘",
        name: "Spirituality",
        description: "",
        hierarchyPath: "context/wellness",
        id: "spirituality",
      ),
    ],
    hierarchyPath: "",
    id: "context",
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
      ),
      TaskDefinition.note(
        icon: "🔮",
        name: "Fortune telling",
        description: "I will always be alone.",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "fortune-telling",
      ),
      TaskDefinition.note(
        icon: "🌗",
        name: "All or nothing",
        description: "I havent figured myself out; I am a failure.",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "all-or-nothing",
      ),
      TaskDefinition.note(
        icon: "👺",
        name: "Emotion reasoning",
        description: "I feel lost; I must be wrong",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "emotion-reasoning",
      ),
      TaskDefinition.note(
        icon: "🏷",
        name: "Labeling",
        description: "I'm stupid",
        hierarchyPath: "distortion/jumping-to-conclusion",
        id: "labeling",
      ),

      // OPTION - TOXIC POSITIVITY

      TaskDefinition.note(
        icon: "👟",
        name: "Avoiding emotions",
        description: "Don’t be disappointed.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "avoiding-emotions",
      ),
      TaskDefinition.note(
        icon: "🙏",
        name: "Gratitude shaming",
        description: "It could be worst.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "gratitude-shaming",
      ),
      TaskDefinition.note(
        icon: "⚖️",
        name: "Comparison trap",
        description: "Why is everyone advancing their careers.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "comparison-trap",
      ),
      TaskDefinition.note(
        icon: "🪄",
        name: "Magical thinking",
        description: "If I’m ______ , my life would be better.",
        hierarchyPath: "distortion/toxic-positivity",
        id: "magical-thinking",
      ),

      // OPTION - ASSUMING THE WORST

      TaskDefinition.note(
        icon: "☄️",
        name: "Catastophizing",
        description: "What if I blow this all up?",
        hierarchyPath: "distortion/assuming-the-worst",
        id: "catastophizing",
      ),
      TaskDefinition.note(
        icon: "🙈",
        name: "Discouting the positive",
        description: "They are just congratulating me to be nice.",
        hierarchyPath: "distortion/assuming-the-worst",
        id: "discouting-the-positive",
      ),
      TaskDefinition.note(
        icon: "🔬",
        name: "Magnifying the negative",
        description: "That single error ruined everything.",
        hierarchyPath: "distortion/assuming-the-worst",
        id: "magnifying-the-negative",
      ),
      TaskDefinition.note(
        icon: "☂️",
        name: "Overgeneralization",
        description: "Everyone sucks.",
        hierarchyPath: "distortion/assuming-the-worst",
        id: "overgeneralization",
      ),

      // OPTION - FINGER POINTING

      TaskDefinition.note(
        icon: "👉",
        name: "Self blaming",
        description: "They got bad grades, because I’m their friend.",
        hierarchyPath: "distortion/finger-pointing",
        id: "self-blaming",
      ),
      TaskDefinition.note(
        icon: "👈",
        name: "Blaming others",
        description: "They are to blame for my unhappiness.",
        hierarchyPath: "distortion/finger-pointing",
        id: "blaming-others",
      ),
      TaskDefinition.note(
        icon: "👑",
        name: "Always right",
        description: "I think that I’m fair and right.",
        hierarchyPath: "distortion/finger-pointing",
        id: "always-right",
      ),
      TaskDefinition.note(
        icon: "🎯",
        name: "Victim position",
        description: "The whole world is out to get me.",
        hierarchyPath: "distortion/finger-pointing",
        id: "victim-position",
      ),
      TaskDefinition.note(
        icon: "👼",
        name: "Heaven's reward",
        description: "I’ve donated a lot. Why am I still poor?",
        hierarchyPath: "distortion/finger-pointing",
        id: "heavens-reward",
      ),
    ],
    hierarchyPath: "",
    id: "distortion",
  );

  static const taskFear = Task.linear(
    icon: "🕷",
    name: "Examine Fear",
    description: "What if it's true?",
    definitions: <TaskDefinition>[
      TaskDefinition.note(
        icon: "",
        name: "If that were true,\nwhat would it mean to you?",
        description: "Repeat as necessary.",
        hierarchyPath: "",
        id: "",
      ),
    ],
    hierarchyPath: "",
    id: "fear",
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
      ),

      // LABEL - EMOTIONS

      TaskDefinition.label(
        icon: "😫",
        name: "Frustrated",
        description: "",
        hierarchyPath: "emotion",
        id: "frustrated",
      ),
      TaskDefinition.label(
        icon: "🧐",
        name: "Curious",
        description: "",
        hierarchyPath: "emotion",
        id: "curious",
      ),
      TaskDefinition.label(
        icon: "🙃",
        name: "Joy",
        description: "",
        hierarchyPath: "emotion",
        id: "joy",
      ),
      TaskDefinition.label(
        icon: "🥺",
        name: "Guilt",
        description: "",
        hierarchyPath: "emotion",
        id: "guilt",
      ),
      TaskDefinition.label(
        icon: "🤔",
        name: "Confused",
        description: "",
        hierarchyPath: "emotion",
        id: "confused",
      ),
      TaskDefinition.label(
        icon: "😡",
        name: "Angry",
        description: "",
        hierarchyPath: "emotion",
        id: "angry",
      ),
      TaskDefinition.label(
        icon: "😟",
        name: "Concerned",
        description: "",
        hierarchyPath: "emotion",
        id: "concerned",
      ),
      TaskDefinition.label(
        icon: "😌",
        name: "Neutral",
        description: "",
        hierarchyPath: "emotion",
        id: "neutral",
      ),
      TaskDefinition.label(
        icon: "😱",
        name: "Terrified",
        description: "",
        hierarchyPath: "emotion",
        id: "terrified",
      ),
      TaskDefinition.label(
        icon: "🙄",
        name: "Annoyed",
        description: "",
        hierarchyPath: "emotion",
        id: "annoyed",
      ),
      TaskDefinition.label(
        icon: "😪",
        name: "Bored",
        description: "",
        hierarchyPath: "emotion",
        id: "bored",
      ),
      TaskDefinition.label(
        icon: "😭",
        name: "Sad",
        description: "",
        hierarchyPath: "emotion",
        id: "sad",
      ),
      TaskDefinition.label(
        icon: "😰",
        name: "Anxious",
        description: "",
        hierarchyPath: "emotion",
        id: "anxious",
      ),
      TaskDefinition.label(
        icon: "😖",
        name: "Overwhelmed",
        description: "",
        hierarchyPath: "emotion",
        id: "overwhelmed",
      ),
      TaskDefinition.label(
        icon: "😒",
        name: "Jealous",
        description: "",
        hierarchyPath: "emotion",
        id: "jealous",
      ),
      TaskDefinition.label(
        icon: "🤢",
        name: "Disgusted",
        description: "",
        hierarchyPath: "emotion",
        id: "disgusted",
      ),
      TaskDefinition.label(
        icon: "😔",
        name: "Remorse",
        description: "",
        hierarchyPath: "emotion",
        id: "remorse",
      ),
      TaskDefinition.label(
        icon: "😫",
        name: "Despair",
        description: "",
        hierarchyPath: "emotion",
        id: "despair",
      ),
      TaskDefinition.label(
        icon: "😞",
        name: "Pessimistic",
        description: "",
        hierarchyPath: "emotion",
        id: "pressimistic",
      ),
      TaskDefinition.label(
        icon: "😃",
        name: "Optimistic",
        description: "",
        hierarchyPath: "emotion",
        id: "optimistic",
      ),
      TaskDefinition.label(
        icon: "🤩",
        name: "Excited",
        description: "",
        hierarchyPath: "emotion",
        id: "excited",
      ),
    ],
    hierarchyPath: "",
    id: "emotion",
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
      ),

      // LABEL - NEEDS

      TaskDefinition.label(
        icon: "🖖",
        name: "Prosperity",
        description: "",
        hierarchyPath: "prosperity",
        id: "needs",
      ),
      TaskDefinition.label(
        icon: "🎯",
        name: "Purpose",
        description: "",
        hierarchyPath: "needs",
        id: "purpose",
      ),
      TaskDefinition.label(
        icon: "🔮",
        name: "Clarity",
        description: "",
        hierarchyPath: "needs",
        id: "clarity",
      ),
      TaskDefinition.label(
        icon: "💅",
        name: "Beauty",
        description: "",
        hierarchyPath: "needs",
        id: "beauty",
      ),
      TaskDefinition.label(
        icon: "🧘",
        name: "Spirituality",
        description: "",
        hierarchyPath: "needs",
        id: "spirituality",
      ),
      TaskDefinition.label(
        icon: "🤟",
        name: "Connection",
        description: "",
        hierarchyPath: "needs",
        id: "connections",
      ),
      TaskDefinition.label(
        icon: "🥰",
        name: "Empathy",
        description: "",
        hierarchyPath: "needs",
        id: "empathy",
      ),
      TaskDefinition.label(
        icon: "🕊",
        name: "Peace",
        description: "",
        hierarchyPath: "needs",
        id: "peace",
      ),
      TaskDefinition.label(
        icon: "🔒",
        name: "Security",
        description: "",
        hierarchyPath: "needs",
        id: "security",
      ),
      TaskDefinition.label(
        icon: "💪",
        name: "Stability",
        description: "",
        hierarchyPath: "needs",
        id: "stability",
      ),
      TaskDefinition.label(
        icon: "🏡",
        name: "Belonging",
        description: "",
        hierarchyPath: "needs",
        id: "belonging",
      ),
      TaskDefinition.label(
        icon: "🗽",
        name: "Autonomy",
        description: "",
        hierarchyPath: "needs",
        id: "autonomy",
      ),
      TaskDefinition.label(
        icon: "👓",
        name: "Transparency",
        description: "",
        hierarchyPath: "needs",
        id: "transparency",
      ),
      TaskDefinition.label(
        icon: "⚖️",
        name: "Justice",
        description: "",
        hierarchyPath: "needs",
        id: "justice",
      ),
      TaskDefinition.label(
        icon: "🤝",
        name: "Trust",
        description: "",
        hierarchyPath: "needs",
        id: "trust",
      ),
      TaskDefinition.label(
        icon: "🫡",
        name: "Respect",
        description: "",
        hierarchyPath: "needs",
        id: "respect",
      ),
      TaskDefinition.label(
        icon: "🛀",
        name: "Care",
        description: "",
        hierarchyPath: "needs",
        id: "care",
      ),
      TaskDefinition.label(
        icon: "💡",
        name: "Creativity",
        description: "",
        hierarchyPath: "needs",
        id: "creativity",
      ),
      TaskDefinition.label(
        icon: "🎤",
        name: "Expression",
        description: "",
        hierarchyPath: "needs",
        id: "expression",
      ),
      TaskDefinition.label(
        icon: "🙏",
        name: "Hope",
        description: "",
        hierarchyPath: "needs",
        id: "hope",
      ),
      TaskDefinition.label(
        icon: "😴",
        name: "Rest",
        description: "",
        hierarchyPath: "needs",
        id: "rest",
      ),
    ],
    hierarchyPath: "",
    id: "need",
  );

  static const taskIntention = Task.diverge(
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
      ),
      TaskDefinition.note(
        icon: "⚖️",
        name: "Effort vs impact",
        description: "Gain a clearer picture of your task priorities.",
        hierarchyPath: "intentions/motivation",
        id: "effort-vs-impact",
      ),
      TaskDefinition.note(
        icon: "🧱",
        name: "Identify barriers",
        description: "Prepare for potential friction and opposing forces.",
        hierarchyPath: "intentions/motivation",
        id: "barriers",
      ),
      TaskDefinition.note(
        icon: "❤️‍🔥",
        name: "Seeing one’s way",
        description: "Find authentic purpose and meaning in a task.",
        hierarchyPath: "intentions/motivation",
        id: "purpose",
      ),
      TaskDefinition.note(
        icon: "🔍",
        name: "Macro & Micro lens",
        description: "Realize the benefits and costs of a task",
        hierarchyPath: "intentions/motivation",
        id: "macro-micro",
      ),
      TaskDefinition.note(
        icon: "🌊",
        name: "Go with the current",
        description: "Gain understanding as you go.",
        hierarchyPath: "intentions/motivation",
        id: "go",
      ),

      // NOTE - SOCIAL

      TaskDefinition.note(
        icon: "🙋",
        name: "Asking for help",
        description: "Knowing when you need help is a sign of strength.",
        hierarchyPath: "intentions/social",
        id: "ask-for-help",
      ),
      TaskDefinition.note(
        icon: "🧓",
        name: "Get a wise opinion",
        description: "In person, online or in books",
        hierarchyPath: "intentions/social",
        id: "opinion",
      ),
      TaskDefinition.note(
        icon: "👶",
        name: "Explain it to a six year old.",
        description: "A great way to simplify and clarify your thoughts.",
        hierarchyPath: "intentions/social",
        id: "explain-it-to-kids",
      ),

      // NOTE - RETHINK

      TaskDefinition.note(
        icon: "🧪",
        name: "Iterative testing",
        description: "Conquer uncertainty by continuously learn and improve",
        hierarchyPath: "intentions/rethink",
        id: "iterative-testing",
      ),
      TaskDefinition.note(
        icon: "🌗",
        name: "Become a contrarian.",
        description: "Rethink, adapt and evolve to change.",
        hierarchyPath: "intentions/rethink",
        id: "contrarian",
      ),
      TaskDefinition.note(
        icon: "💤",
        name: "See it with fresh eyes.",
        description: "Taking a break away from repetitive thoughts.",
        hierarchyPath: "intentions/rethink",
        id: "fresh-eyes",
      ),
      TaskDefinition.note(
        icon: "🛝",
        name: "Youngblood",
        description: "Find a creative, stupid, and enjoyable way to do it.",
        hierarchyPath: "intention",
        id: "young-blood",
      ),

      // NOTE - SIMPLIFY

      TaskDefinition.note(
        icon: "🪥",
        name: "Practice routine",
        description: "Repetition helps your brain automate",
        hierarchyPath: "action/simplify",
        id: "routine",
      ),
      TaskDefinition.note(
        icon: "🐅",
        name: "Acting on instinct",
        description: "Understand and capitalized on your inclination",
        hierarchyPath: "action/simplify",
        id: "instinct",
      ),
      TaskDefinition.note(
        icon: "🍄",
        name: "Breaking things down",
        description: "Turn overwhelming challenges into manageable tasks",
        hierarchyPath: "action/simplify",
        id: "breaking-things-down",
      ),
      TaskDefinition.note(
        icon: "🪣",
        name: "Bucketing",
        description: "Group similar tasks to make decisions less exhausting",
        hierarchyPath: "action/simplify",
        id: "bucketing",
      ),
    ],
    hierarchyPath: "",
    id: "intention",
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
    id: "note",
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
      taskIntention,
      taskFeedback,
    ],
    hierarchyPath: "",
    id: "mood",
    presentation: a,
  );

  static const exerciseThought = Exercise(
    icon: "🔍",
    name: "Thought Check",
    description: "Spot patterns and fallacies.",
    definitions: [
      taskContext,
      taskFear,
      taskDistortion,
      taskIntention,
      taskFeedback,
    ],
    hierarchyPath: "",
    id: "thought",
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
      taskIntention,
      taskFeedback,
    ],
    hierarchyPath: "",
    id: "act",
    presentation: c,
  );
}
