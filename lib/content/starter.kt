package ch.thipok.sanity.shared.domain.model

import ch.thipok.sanity.shared.domain.model.definition.DefinitionData
import ch.thipok.sanity.shared.domain.model.definition.DefinitionFactory
import ch.thipok.sanity.shared.domain.model.definition.DefinitionIdentifier
import ch.thipok.sanity.shared.util.extension.uuidMIN
import io.github.z4kn4fein.semver.Version
import org.koin.core.component.KoinComponent

// TODO: DSL for writing exercise
object Starter : KoinComponent {

    // TODO: Reimplement version with CI Integration
    private val version = Version(0, 0, 0)

    // EMPTY STATES

    val emptyTask = Task.Undefined

    val emptyEntry: Entry<*, *, DefinitionData<*>, *> = Entry(
        task = Task.Undefined
    )

    val emptyExercise = Exercise.Undefined

    val emptySession = Session(
        exercise = emptyExercise,
        entries = emptyList(),
        hierarchyPath = "",
        uuid = uuidMIN,
    )

    // TASKS

    val taskQuickNote = Task.Repeat(
        name = "Quick Notes",
        description = "Jot your thoughts down...",
        repeatingFactory = DefinitionFactory.Note(
            "Quick Notes",
            "Start writing...",
            "base",
            "",
        ),
        id = "quick-note",
        version = version
    )

    val taskContext = Task.Converge(
        name = "Identify Context",
        description = "",
        noteFactory = DefinitionFactory.Note(
            "What’s going on?",
            "Take in my surroundings. Where am I? Who am I with? When did I start to notice a change in my emotion?",
            "",
            "",
        ),
        labelFactories = listOf(
            // LABEL - SOCIAL

            DefinitionFactory.Label("Friends", "", "context/social"),
            DefinitionFactory.Label("Family", "", "context/social"),
            DefinitionFactory.Label("Pet", "", "context/social"),
            DefinitionFactory.Label("Relationship", "", "context/social"),
            DefinitionFactory.Label("Community", "", "context/social"),

            // LABEL - LIFE

            DefinitionFactory.Label("Work", "", "context/life"),
            DefinitionFactory.Label("Learning", "", "context/life"),
            DefinitionFactory.Label("Finance", "", "context/life"),
            DefinitionFactory.Label("Shopping", "", "context/life"),
            DefinitionFactory.Label("Entertainment", "", "context/life"),

            // LABEL - WELLNESS

            DefinitionFactory.Label("Eats", "", "context/wellness"),
            DefinitionFactory.Label("Fitness", "", "context/wellness"),
            DefinitionFactory.Label("Health", "", "context/wellness"),
            DefinitionFactory.Label("Chores", "", "context/wellness"),
            DefinitionFactory.Label("Time Alone", "", "context/wellness"),

            // LABEL - WORLD

            DefinitionFactory.Label("Travel", "", "context/world"),
            DefinitionFactory.Label("Hobbies", "", "context/world"),
            DefinitionFactory.Label("Philanthropy", "", "context/world"),
            DefinitionFactory.Label("Nature", "", "context/world"),
            DefinitionFactory.Label("Spirituality", "", "context/world"),
        ),
        id = "context",
        version = version
    )

    private val taskDistortion = Task.Diverge(
        name = "Identify Distortions",
        description = "Jot your thoughts down...",
        factories = listOf(

            // OPTION - JUMPING TO CONCLUSION

            DefinitionFactory.Note(
                "Mind reading",
                "‘I bet they must be annoyed.’",
                "distortion/jumping-to-conclusion",
                "",
            ),
            DefinitionFactory.Note(
                "Fortune telling",
                "‘I will always be alone.’",
                "distortion/jumping-to-conclusion",
                "",
            ),
            DefinitionFactory.Note(
                "All or nothing",
                "‘I haven’t figured myself out; I am a failure.’",
                "distortion/jumping-to-conclusion",
                "",
            ),
            DefinitionFactory.Note(
                "Emotion reasoning",
                "‘I feel lost; I must be wrong’",
                "distortion/jumping-to-conclusion",
                "",
            ),
            DefinitionFactory.Note(
                "Labeling",
                "‘I’m stupid’",
                "distortion/jumping-to-conclusion",
                "",
            ),

            // OPTION - TOXIC POSITIVITY

            DefinitionFactory.Note(
                "Avoiding emotions",
                "‘Don’t be disappointed.’",
                "distortion/toxic-positivity",
                "",
            ),
            DefinitionFactory.Note(
                "Gratitude shaming",
                "‘It could be worst’",
                "distortion/toxic-positivity",
                "",
            ),
            DefinitionFactory.Note(
                "Comparison trap",
                "‘Why is everyone advancing their careers.’",
                "distortion/toxic-positivity",
                "",
            ),
            DefinitionFactory.Note(
                "Magical thinking",
                "‘If I’m ______ , my life would be better.’",
                "distortion/toxic-positivity",
                "",
            ),

            // OPTION - FINGER POINTING

            DefinitionFactory.Note(
                "Self blaming",
                "‘They got bad grades, because I’m their friend.’",
                "distortion/finger-pointing",
                "",
            ),
            DefinitionFactory.Note(
                "Blaming others",
                "‘They are to blame for my unhappiness.’",
                "distortion/finger-pointing",
                "",
            ),
            DefinitionFactory.Note(
                "Always right",
                "‘I think that I’m fair and right.’",
                "distortion/finger-pointing",
                "",
            ),
            DefinitionFactory.Note(
                "Victim position",
                "‘The whole world is out to get me.’",
                "distortion/finger-pointing",
                "",
            ),
            DefinitionFactory.Note(
                "Heaven's reward",
                "‘I’ve donated a lot. Why am I still poor?’",
                "distortion/finger-pointing",
                "",
            ),
        ),
        id = "distortion",
        version = version,
    )

    private val taskEmotion = Task.Converge(
        name = "Identify Emotion",
        description = "Express how you're feeling...",
        noteFactory = DefinitionFactory.Note(
            "How am I feeling?",
            "How strongly do I want to avoid or approach this emotion? How is my body responding to it? Where do I feel these sensations?",
            "context",
            "",
        ),
        labelFactories = listOf(
            DefinitionFactory.Label("Frustrated", "", "emotion"),
            DefinitionFactory.Label("Curious", "", "emotion"),
            DefinitionFactory.Label("Joy", "", "emotion"),
            DefinitionFactory.Label("Guilt", "", "emotion"),
            DefinitionFactory.Label("Confused", "", "emotion"),
            DefinitionFactory.Label("Angry", "", "emotion"),
            DefinitionFactory.Label("Concerned", "", "emotion"),
            DefinitionFactory.Label("Neutral", "", "emotion"),
            DefinitionFactory.Label("Terrified", "", "emotion"),
            DefinitionFactory.Label("Annoyed", "", "emotion"),
            DefinitionFactory.Label("Bored", "", "emotion"),
            DefinitionFactory.Label("Sad", "", "emotion"),
            DefinitionFactory.Label("Anxious", "", "emotion"),
            DefinitionFactory.Label("Overwhelmed", "", "emotion"),
            DefinitionFactory.Label("Jealous", "", "emotion"),
            DefinitionFactory.Label("Disgusted", "", "emotion"),
            DefinitionFactory.Label("Remorse", "", "emotion"),
            DefinitionFactory.Label("Despair", "", "emotion"),
            DefinitionFactory.Label("Pessimistic", "", "emotion"),
        ),
        id = "emotion",
        version = version,
    )

    private val taskNeed = Task.Converge(
        name = "Identify Needs",
        description = "Reveal underlying universal needs..",
        noteFactory = DefinitionFactory.Note(
            "",
            "",
            "",
            "context",
        ),
        labelFactories = listOf(
            DefinitionFactory.Label("Prosperity", "", "need"),
            DefinitionFactory.Label("Purpose", "", "need"),
            DefinitionFactory.Label("Clarity", "", "need"),
            DefinitionFactory.Label("Beauty", "", "need"),
            DefinitionFactory.Label("Spirituality", "", "need"),
            DefinitionFactory.Label("Connection", "", "need"),
            DefinitionFactory.Label("Empathy", "", "need"),
            DefinitionFactory.Label("Peace", "", "need"),
            DefinitionFactory.Label("Security", "", "need"),
            DefinitionFactory.Label("Stability", "", "need"),
            DefinitionFactory.Label("Belonging", "", "need"),
            DefinitionFactory.Label("Autonomy", "", "need"),
            DefinitionFactory.Label("Transparency", "", "need"),
            DefinitionFactory.Label("Justice", "", "need"),
            DefinitionFactory.Label("Trust", "", "need"),
            DefinitionFactory.Label("Respect", "", "need"),
            DefinitionFactory.Label("Caring", "", "need"),
            DefinitionFactory.Label("Creativity", "", "need"),
            DefinitionFactory.Label("Expression", "", "need"),
            DefinitionFactory.Label("Hope", "", "need"),
        ),
        id = "needs",
        version = version,
    )

    private val taskCoreBelief = Task.Repeat(
        name = "Identify Core Belief",
        description = "",
        repeatingFactory = DefinitionFactory.Note(
            "If your thought was true, what would it mean to you?",
            "",
            "core-belief",
            "",
        ),
        id = "core-belief",
        version = version,
    )

    private val taskAction = Task.Diverge(
        name = "Taking Action",
        description = "Strategies to help you get going...",
        factories = listOf(
            DefinitionFactory.Note(
                "Effort vs Impact Mapping",
                "Gain a clearer picture of your task priorities",
                "action/motivation",
                "",
            ),
            DefinitionFactory.Note(
                "Identify Barriers",
                "Prepare for potential friction and opposing forces",
                "action/motivation",
                "",
            ),
            DefinitionFactory.Note(
                "Seeing one’s way",
                "Find authentic purpose and meaning in a task",
                "action/motivation",
                "",
            ),
            DefinitionFactory.Note(
                "See the bigger (and smaller) picture",
                "Realize the benefits and costs of a task",
                "action/motivation",
                "",
            ),

            DefinitionFactory.Note(
                "Go with the current",
                "Gain a clearer picture of your task priorities",
                "action/social",
                "",
            ),
            DefinitionFactory.Note(
                "Asking for help",
                "Be it in person or online, it is a sign of strength",
                "action/social",
                "",
            ),
            DefinitionFactory.Note(
                "Get a wise counsel",
                "In person, online or in books.",
                "action/social",
                "",
            ),
            DefinitionFactory.Note(
                "Explain it to a six year old",
                "A great way to simplify and clarify your thoughts",
                "action/social",
                "",
            ),

            DefinitionFactory.Note(
                "Iterative testing",
                "Conquer uncertainty by continuously learn and improve",
                "action/rethink",
                "",
            ),
            DefinitionFactory.Note(
                "Take a change of heart",
                "Rethink, adapt and evolve to change",
                "action/rethink",
                "",
            ),
            DefinitionFactory.Note(
                "Seeing with fresh eyes",
                "Taking a break away from repetitive thoughts",
                "action/rethink",
                "",
            ),
            DefinitionFactory.Note(
                "Kids at heart",
                "Find a creative and enjoyable way to do it.",
                "action/rethink",
                "",
            ),

            DefinitionFactory.Note(
                "Practice routine",
                "Repetition helps your brain automate",
                "action/simplify",
                "",
            ),
            DefinitionFactory.Note(
                "Acting on instinct",
                "Understand and capitalized on your inclination",
                "action/simplify",
                "",
            ),
            DefinitionFactory.Note(
                "Breaking things down",
                "Turn overwhelming challenges into manageable tasks",
                "action/simplify",
                "",
            ),
            DefinitionFactory.Note(
                "Bucketing",
                "Group similar tasks to make decisions less exhausting",
                "action/simplify",
                "",
            ),
        ),
        id = "action",
        version = version,
    )

    // EXERCISES

    val exerciseQuickNote = Exercise.Base(
        name = "Quick Note",
        description = "Jot your thoughts down...",
        tasks = listOf(
            taskQuickNote
        ),
        id = "quick-note",
        version = version,
    )

    val exerciseMoodCheck = Exercise.Base(
        name = "Mood Check",
        description = "‘I bet they must be annoyed.’",
        tasks = listOf(
            taskContext,
            taskEmotion,
            taskNeed,
            taskAction,
        ),
        id = "mood-check",
        version = version,
    )

    val exerciseThoughtCheck = Exercise.Base(
        name = "Thought Check",
        description = "‘I will always be alone.’",
        tasks = listOf(
            taskContext,
            taskCoreBelief,
            taskDistortion,
            taskAction,
        ),
        id = "thought-check",
        version = version,
    )

    val exerciseActionCheck = Exercise.Base(
        name = "Action Check",
        description = "‘I haven’t figured myself out; I am a failure.’",
        tasks = listOf(
            taskContext,
            taskNeed,
            taskDistortion,
            taskAction,
        ),
        id = "action-check",
        version = version,
    )

    // Stubs

    val contextEntryStub = Entry(task = taskContext) +
            taskContext.noteFactory.default.copy(text = "I am alone") +
            taskContext.labelFactories.last().default

    val emotionEntryStub = Entry(task = taskEmotion) +
            taskEmotion.noteFactory.default +
            DefinitionData.Label(
                taskEmotion.definitions.last().definitionId as DefinitionIdentifier.Label,
            )

    val moodCheckSessionStub = Session(
        exercise = exerciseMoodCheck,
        entries = listOf(
            contextEntryStub,
            emotionEntryStub
        ),
        hierarchyPath = exerciseMoodCheck.hierarchyPath
    )
}
